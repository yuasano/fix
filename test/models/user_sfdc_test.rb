require 'test_helper'

class UserSfdcTest < ActiveSupport::TestCase
  test "syncs with Salesforce" do
    Spree::User.create!(email: "john@malkovich.com", password: "12345678")
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.contact").to_hash
    assert_equal 1, rows.size
    assert_equal "john@malkovich.com", rows[0]["email"]
  end
end
