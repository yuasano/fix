require 'test_helper'

class ProductSfdcTest < ActiveSupport::TestCase
  setup do
    @shipping = Spree::ShippingCategory.create!(name: "Pick-up")
    @attrs = {
      name: "Ritual Coffee",
      price: 28,
      shipping_category: @shipping
    }
  end

  test "inserts new products" do
    Spree::Product.create!(@attrs)
    rows = ActiveRecord::Base.connection.select_rows("SELECT name__c FROM salesforce.products__c")
    assert_equal 1, rows.size
    assert_equal "Ritual Coffee", rows[0].first
  end

  test "updates existing products" do
    Spree::Product.create!(@attrs).update_attributes!(name: "Blue Coffee")
    rows = ActiveRecord::Base.connection.select_rows("SELECT name__c FROM salesforce.products__c")
    assert_equal 1, rows.size
    assert_equal "Blue Coffee", rows[0].first
  end
end
