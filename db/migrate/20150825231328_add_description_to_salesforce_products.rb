class AddDescriptionToSalesforceProducts < ActiveRecord::Migration
  def up
    return if ENV["DEPLOYMENT"] == "production"
    HerokuConnect.change_schema("salesforce") do
      add_column :product2, :description, "VARCHAR(4000)"
    end
  end

  def down
    return if ENV["DEPLOYMENT"] == "production"
    HerokuConnect.change_schema("salesforce") do
      remove_column :product2, :description
    end
  end
end
