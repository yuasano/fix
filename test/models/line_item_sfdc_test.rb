require 'test_helper'

class LineItemSfdcTest < ActiveSupport::TestCase
  setup do
    @shipping_cat = Spree::ShippingCategory.create!(name: "Pick-up")
    @product = Spree::Product.create!(
      name: "Ritual Coffee",
      price: 28,
      shipping_category: @shipping_cat)
    @variant = Spree::Variant.create!(
      product: @product,
      track_inventory: false)
    @order = Spree::Order.create!(
      user: @user,
      number: "001",
      confirmation_delivered: true)
    @li = Spree::LineItem.create!(
      order: @order,
      variant: @variant,
      price: 5.99,
      quantity: 2)
  end

  test "syncs with the custom object LineItem" do
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.lineitem__c").to_hash
    li = rows.first
    assert_equal 1, rows.size
    assert_equal "2", li["quantity__c"]
    assert_equal "5.99", li["price_unit__c"]
    assert_equal "11.98", li["price_total__c"]
    assert_equal @order.id.to_s, li["order_id__r__spree_id__c"]
    assert_equal @product.id.to_s, li["product_id__r__spree_id__c"]
  end
end