require 'test_helper'

class OrderUpdaterSfdcTest < ActiveSupport::TestCase
  setup do
    @user = Spree::User.create!(
      email: "john@malkovich.com",
      password: "12345678")
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
      confirmation_delivered: true, # skip email
      line_items: [Spree::LineItem.new(quantity: 1, variant: @variant)])
  end

  test "also writes the total to salesforce" do
    @order.total = 150.99
    @order.write_sfdc # make sure order exists in salesforce.order__c
    @order.persist_totals
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.order__c").to_hash
    sfdc_order = rows.first
    assert_equal "150.99", sfdc_order["total__c"]
  end
end