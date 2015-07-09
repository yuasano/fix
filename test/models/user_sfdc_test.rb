require 'test_helper'

class UserSfdcTest < ActiveSupport::TestCase
  test "makes sure a Contact exists in Salesforce with the corresponding email" do
    Spree::User.create!(email: "john@malkovich.com", password: "12345678")
    rows = ActiveRecord::Base.connection.select_all("SELECT * FROM salesforce.contact").to_hash
    assert_equal 1, rows.size
    assert_equal "john@malkovich.com", rows[0]["email"]
  end

  test "doesn't raise if contact already exists" do
    user = Spree::User.create!(email: "john@malkovich.com", password: "12345678")
    user.ensure_sfdc_contact_exists # would raise duplicated record error
  end
end
