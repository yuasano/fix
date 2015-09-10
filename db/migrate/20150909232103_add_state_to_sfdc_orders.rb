class AddStateToSfdcOrders < ActiveRecord::Migration
  def up
    return if ENV["DEPLOYMENT"] == "production"
    HerokuConnect.change_schema("salesforce") do
      add_column :order__c, :state__c, "varchar(40)"
    end
  end

  def down
    return if ENV["DEPLOYMENT"] == "production"
    HerokuConnect.change_schema("salesforce") do
      remove_column :order__c, :state__c
    end
  end
end
