class CreateSalesforceSchema < ActiveRecord::Migration
  def up
    return if ENV["DEPLOYMENT"] != "development"
    execute "CREATE SCHEMA salesforce"
  end

  def down
    return if ENV["DEPLOYMENT"] != "development"
    execute "DROP SCHEMA salesforce CASCADE"
  end
end
