require 'test_helper'

class PriceSfdcTest < ActiveSupport::TestCase
  setup do
    @cat = Spree::ShippingCategory.create!(name: "default")

    @product = Spree::Product.create!(
      name: "Diet Coke",
      slug: "diet_coke",
      price: 10,
      shipping_category: @cat)

    @variant = @product.master
  end

  test "updates pricebook entries" do
    @variant.price_in(Spree::Config[:currency]).update_attributes!(amount: 42)
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.pricebookentry").to_hash
    assert_equal 1, rows.size
    assert_equal "42", rows[0]["unitprice"]
  end
end
