require 'test_helper'

class OrderSfdcTest < ActiveSupport::TestCase
  setup do
    @user = Spree::User.create!(
      email: "john@malkovich.com",
      password: "12345678")
    @shipping_cat = Spree::ShippingCategory.create!(name: "Pick-up")
    @product = Spree::Product.create!(
      name: "Ritual Coffee",
      price: 5.50,
      shipping_category: @shipping_cat)
    @variant = Spree::Variant.create!(
      product: @product,
      track_inventory: false)
    @order = Spree::Order.create!(
      user: @user,
      number: "001",
      confirmation_delivered: true, # skip email
      line_items: [Spree::LineItem.new(quantity: 2, variant: @variant)])
    def @order.send_cancel_email; end # stub
  end

  def move_order_to_complete
    # set the order in delivery, and advance it to the final state (complete)
    @order.update_attributes!(state: "delivery")
    @order.next!
  end

  test "syncs with the custom object Order" do
    move_order_to_complete
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.order__c").to_hash
    order = rows.first
    assert_equal 1, rows.size
    assert_equal "001", order["name"]
    assert_equal @user.email, order["contact__r__spree_email__c"]
    assert_equal @order.id.to_s, order["spree_id__c"]
    assert_equal "complete", order["state__c"]
  end

  test "syncs line items" do
    move_order_to_complete
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.lineitem__c").to_hash
    li = rows.first
    assert_equal 1, rows.size
    assert_equal "2", li["quantity__c"]
    assert_equal "5.5", li["price_unit__c"]
    assert_equal "11", li["price_total__c"]
  end

  test "syncs the user address when the order has a shipment" do
    us = Spree::Country.create!(name: 'USA', iso_name: 'US AND A')
    ca = Spree::State.create!(country: us, name: 'California')
    @address = Spree::Address.create!(
      firstname: "John",
      lastname: "Malkovich",
      phone: "123 456-7890",
      address1: "650 7th st",
      city: "San Francisco",
      state: ca,
      country: us,
      zipcode: "94103")
    @loc = Spree::StockLocation.create!(name: "default")
    @order.shipments.create!(address: @address, stock_location: @loc)

    move_order_to_complete

    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.contact").to_hash
    sf_address = rows.first
    assert_equal "John", sf_address["firstname"]
    assert_equal "Malkovich", sf_address["lastname"]
    assert_equal "123 456-7890", sf_address["phone"]
    assert_equal "650 7th st", sf_address["mailingstreet"]
    assert_equal "San Francisco", sf_address["mailingcity"]
    assert_equal "California", sf_address["mailingstate"]
    assert_equal "USA", sf_address["mailingcountry"]
    assert_equal "94103", sf_address["mailingpostalcode"]
  end

  test "updates state with Salesforce when canceled" do
    move_order_to_complete
    @order.cancel!
    sfdc_order = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.order__c").to_hash.first
    assert_equal "canceled", sfdc_order["state__c"]
  end
end