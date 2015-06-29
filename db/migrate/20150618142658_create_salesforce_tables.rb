class CreateSalesforceTables < ActiveRecord::Migration
  def up
    execute "CREATE SCHEMA salesforce"
    change_schema("salesforce") do
      create_table :contact do |t|
        t.column :mailingstreet, "varchar(255)"
        t.column :mailingcity, "varchar(40)"
        t.column :mailingstate, "varchar(80)"
        t.column :mailingcountry, "varchar(80)"
        t.column :mailingpostalcode, "varchar(20)"
        t.column :firstname, "varchar(40)"
        t.column :lastname, "varchar(80)"
        t.column :email, "varchar(80)"
        t.column :phone, "varchar(40)"
        t.column :sfid, "varchar(18)"
        t.column :spree_id__c, "varchar(14)"
      end

      create_table :orders__c do |t|
        t.text :customer_email__c
      end

      create_table :products__c do |t|
        t.integer :spree_id__c
        t.text :name__c
      end
    end
  end

  def down
    execute "DROP SCHEMA salesforce CASCADE"
  end

  def change_schema(name)
    conn = ActiveRecord::Base.connection
    current_schema = conn.schema_search_path
    conn.schema_search_path = name
    yield
    conn.schema_search_path = current_schema
  end
end
