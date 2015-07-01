class CreateSalesforceProduct2 < ActiveRecord::Migration
  def up
    return if ENV["DEPLOYMENT"] == "production"
    HerokuConnect.change_schema("salesforce") do
      puts ActiveRecord::Base.connection.schema_search_path
      create_table :product2 do |t|
        t.column :productcode, "varchar(255)"
        t.column :name, "varchar(255)"
        t.column :spree_id__c, "varchar(14)"
      end
    end
  end

  def down
    return if ENV["DEPLOYMENT"] == "production"
    execute "DROP TABLE product2"
  end
end
