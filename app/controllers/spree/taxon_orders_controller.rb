module Spree
  # Copied from Spree::OrdersController to support #populate for
  # multiple/all products in a taxon [kit/bundle]
  class TaxonOrdersController < Spree::StoreController
    before_action :check_authorization
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    helper 'spree/products', 'spree/orders'

    respond_to :html

    before_action :assign_order_with_lock, only: :update
    skip_before_action :verify_authenticity_token, only: [:populate]

    # Same a Spree::OrdersController#populate, but accepts a
    # params collection of "list_items" instead of just one at a time.
    def populate
      error    = nil
      order    = current_order(create_order_if_necessary: true)
      order.transaction do
        items    = params[:line_items] || []
        items.each do |index, item|
          variant  = Spree::Variant.find(item[:variant_id])
          quantity = item[:quantity].to_i
          options  = item[:options] || {}

          # 2,147,483,647 is crazy. See issue #2695.
          if quantity.between?(1, 2_147_483_647)
            begin
              order.contents.add(variant, quantity, options)
            rescue ActiveRecord::RecordInvalid => e
              error = e.record.errors.full_messages.join(", ")
            end
          else
            error = Spree.t(:please_enter_reasonable_quantity)
          end

          if error
            raise ActiveRecord::Rollback, "Some of the items could not be added to the order"
          end
        end
      end

      if error
        flash[:error] = error
        redirect_back_or_default(spree.root_path)
      else
        respond_with(order) do |format|
          format.html { redirect_to cart_path }
        end
      end
    end

    def check_authorization
      order = Spree::Order.find_by_number(params[:id]) || current_order

      if order
        authorize! :edit, order, cookies.signed[:guest_token]
      else
        authorize! :create, Spree::Order
      end
    end

    private

      def order_params
        if params[:order]
          params[:order].permit(*permitted_order_attributes)
        else
          {}
        end
      end

      def assign_order_with_lock
        @order = current_order(lock: true)
        unless @order
          flash[:error] = Spree.t(:order_not_found)
          redirect_to root_path and return
        end
      end
  end
end
