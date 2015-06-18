class CreateSalesforceOrders < ActiveRecord::Migration
  def up
    execute "CREATE SCHEMA salesforce"
    change_schema("salesforce") do
      create_table :orders__c do |t|
        t.text :customer_email__c
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
