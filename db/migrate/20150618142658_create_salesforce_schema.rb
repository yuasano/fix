class CreateSalesforceSchema < ActiveRecord::Migration
  def up
    return if ENV["DEPLOYMENT"] == "production"
    execute "CREATE SCHEMA salesforce"
  end

  def down
    return if ENV["DEPLOYMENT"] == "production"
    execute "DROP SCHEMA salesforce CASCADE"
  end
end
