Spree::Order.class_eval do
  include HerokuConnect::InstanceMethods

  state_machine do
    after_transition to: :complete, do: :write_sfdc
  end

  def write_sfdc
    if shipment = shipments.first
      address = shipment.address
      cond = { spree_id__c: self.user.id.to_s }
      update = {
        firstname: address.firstname,
        lastname: address.lastname,
        phone: address.phone,
        mailingstreet: address.address1,
        mailingcity: address.city,
        mailingstate: address.state.try(:name),
        mailingcountry: address.country.try(:name),
        mailingpostalcode: address.zipcode,
      }
      HerokuConnect.sync("salesforce.contact", update, cond)
    end
  end
end

Spree::Product.class_eval do
  heroku_connect("salesforce.product2",
    spree_id__c: :id,
    productcode: :slug,
    name: :name)
end

Spree::User.class_eval do
  heroku_connect("salesforce.contact",
    spree_id__c: :id,
    email: :email)
end
