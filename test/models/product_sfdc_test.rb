require 'test_helper'

class ProductSfdcTest < ActiveSupport::TestCase
  setup do
    @cat = Spree::ShippingCategory.create!(name: "default")

    @product = Spree::Product.create!(
      name: "Diet Coke",
      slug: "diet_coke",
      description: "Diet beverage",
      price: 10,
      shipping_category: @cat)
  end

  test "syncs salesforce product entry" do
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.product2").to_hash
    assert_equal 1, rows.size
    assert_equal "Diet Coke", rows[0]["name"]
    assert_equal "Diet beverage", rows[0]["description"]
    assert_equal "diet_coke", rows[0]["productcode"]
  end

  test "creates a pricebook entry for the product" do
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.pricebookentry").to_hash
    assert_equal 1, rows.size
    assert_equal @product.id.to_s, rows[0]["product2__spree_id__c"]
    assert_equal "Diet Coke", rows[0]["name"]
    assert_equal "10", rows[0]["unitprice"]
  end
end
