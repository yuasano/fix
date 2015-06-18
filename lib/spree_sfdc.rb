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

Spree::Product.class_eval do
  after_save :write_sfdc

  def write_sfdc
    table = Arel::Table.new("salesforce.products__c")
    updates = [
      [table[:name__c], self.name]
    ]

    if id_changed? # can't use new_record?, it's always false on after_save hooks
      updates << [table[:spree_id__c], self.id]
      manager = Arel::InsertManager.new(ActiveRecord::Base)
      manager.into(table).insert(updates)
    else
      manager = Arel::UpdateManager.new(ActiveRecord::Base)
      manager.table(table).set(updates).where(table[:spree_id__c].eq(self.id))
    end

    self.class.connection.execute(manager.to_sql)
  end
end
