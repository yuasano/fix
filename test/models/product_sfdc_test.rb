require 'test_helper'

class ProductSfdcTest < ActiveSupport::TestCase
  setup do
    @cat = Spree::ShippingCategory.create!(name: "default")
  end

  test "syncs with Salesforce" do
    Spree::Product.create!(
      name: "Diet Coke",
      slug: "diet_coke",
      price: 10,
      shipping_category: @cat)
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.product2").to_hash
    assert_equal 1, rows.size
    assert_equal "Diet Coke", rows[0]["name"]
    assert_equal "diet_coke", rows[0]["productcode"]
  end
end
