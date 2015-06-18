Spree::Order.class_eval do
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
