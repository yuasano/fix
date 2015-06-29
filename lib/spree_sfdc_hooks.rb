Spree::Order.class_eval do
  include HerokuConnect::InstanceMethods

  state_machine do
    after_transition to: :complete, do: :write_sfdc
  end

  def write_sfdc
    manager = Arel::InsertManager.new(ActiveRecord::Base)
    table = Arel::Table.new("salesforce.orders__c")
    manager.into(table).insert([
      [table[:customer_email__c], self.user.email]
    ])
    self.class.connection.execute(manager.to_sql)
  end
end

Spree::Product.class_eval do
  heroku_connect("salesforce.products__c",
    spree_id__c: :id,
    name__c: :name)
end
