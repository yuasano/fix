Spree::Order.class_eval do
  include HerokuConnect::InstanceMethods

  state_machine do
    after_transition to: :complete, do: :write_sfdc
  end

  def write_sfdc
    HerokuConnect.sync("salesforce.orders__c",
      customer_email__c: self.user.email)
  end
end

Spree::Product.class_eval do
  heroku_connect("salesforce.products__c",
    spree_id__c: :id,
    name__c: :name)
end

Spree::User.class_eval do
  heroku_connect("salesforce.contact",
    spree_id__c: :id,
    email: :email)
end
