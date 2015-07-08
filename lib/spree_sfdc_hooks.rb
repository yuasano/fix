Spree::Order.class_eval do
  heroku_connect("salesforce.order__c",
    spree_id__c: :id,
    name: :number,
    total__c: :total,
    contact__r__spree_id__c: :sfdc_user_id)

  def sfdc_user_id
    self.user_id ||
      Spree::User.find_by_email(self.email).try(:id) ||
      create_sfdc_user(self.email)
  end

  def create_sfdc_user(email)
    # sfdc org support spree ids up to 14 chars
    SecureRandom.hex(7).tap do |id|
      HerokuConnect.sync("salesforce.contact", {
        spree_id__c: id,
        email: email
      })
    end
  end

  state_machine do
    after_transition to: :complete, do: :write_sfdc
  end

  def write_sfdc
    if shipment = shipments.first
      address = shipment.address
      cond = { spree_id__c: self.sfdc_user_id.to_s }
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

Spree::LineItem.class_eval do
  heroku_connect("salesforce.lineitem__c",
    spree_id__c: :id,
    price_unit__c: :price,
    price_total__c: :amount,
    quantity__c: :quantity,
    order_id__r__spree_id__c: :order_id,
    product_id__r__spree_id__c: lambda { |li| li.variant.product_id })
end

Spree::Price.class_eval do
  after_update :update_sfdc_product_price

  def update_sfdc_product_price
    return unless variant.is_master
    return unless currency == Spree::Config[:currency]
    cond = { product2__spree_id__c: self.variant.product.id.to_s }
    update = {
      name: self.variant.product.name,
      unitprice: self.amount.to_s,
    }
    HerokuConnect.sync("salesforce.pricebookentry", update, cond)
  end
end

Spree::Product.class_eval do
  after_create :create_sfdc_pricebook_entry

  heroku_connect("salesforce.product2",
    spree_id__c: :id,
    productcode: :slug,
    name: :name)

  def create_sfdc_pricebook_entry
    HerokuConnect.sync("salesforce.pricebookentry", {
      pricebook2id: ENV["PRICEBOOK_ID"],
      name: self.name,
      product2__spree_id__c: self.id,
      unitprice: self.price_in(Spree::Config[:currency]).amount.to_s
    })
  end
end

Spree::User.class_eval do
  heroku_connect("salesforce.contact",
    spree_id__c: :id,
    email: :email)
end
