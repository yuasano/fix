class CreateSalesforceSchema < ActiveRecord::Migration
  def up
    execute "CREATE SCHEMA salesforce"
  end

  def down
    execute "DROP SCHEMA salesforce CASCADE"
  end
end
