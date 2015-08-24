class AddIsstandardToPricebooks < ActiveRecord::Migration
  def up
    return if ENV["DEPLOYMENT"] == "production"
    HerokuConnect.change_schema("salesforce") do
      add_column :pricebook2, :isstandard, :boolean
    end
  end

  def down
    return if ENV["DEPLOYMENT"] == "production"
    HerokuConnect.change_schema("salesforce") do
      remove_column :pricebook2, :isstandard
    end
  end
end
