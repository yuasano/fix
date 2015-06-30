require 'test_helper'

class OrderSfdcTest < ActiveSupport::TestCase
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
      confirmation_delivered: true, # skip email
      line_items: [Spree::LineItem.new(quantity: 1, variant: @variant)])
  end

  test "syncs the user address when the order has a shipment" do
    us = Spree::Country.create!(name: 'US AND A', iso_name: 'USA')
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

    # set the order in delivery, and advance it to the final state (complete)
    @order.update_attributes!(state: "delivery")
    @order.next!

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
end