require 'test_helper'

class OrderSfdcTest < ActiveSupport::TestCase
  setup do
    @user = Spree::User.create!(
      email: "john@malkovich.com",
      password: "12345678")
    @shipping = Spree::ShippingCategory.create!(name: "Pick-up")
    @product = Spree::Product.create!(
      name: "Ritual Coffee",
      price: 28,
      shipping_category: @shipping)
    @variant = Spree::Variant.create!(
      product: @product,
      track_inventory: false)
    @order = Spree::Order.create!(
      user: @user,
      confirmation_delivered: true, # skip email
      line_items: [Spree::LineItem.new(quantity: 1, variant: @variant)])
  end

  test "saves order on the Salesforce table" do
    # set the order in delivery, and advance it to the final state (complete)
    @order.update_attributes!(state: "delivery")
    @order.next!

    rows = ActiveRecord::Base.connection.select_rows("SELECT customer_email__c FROM salesforce.orders__c")
    assert_equal 1, rows.size
    assert_equal "john@malkovich.com", rows[0].first
  end
end