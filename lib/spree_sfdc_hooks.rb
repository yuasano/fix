Spree::Order.class_eval do
  state_machine do
    after_transition to: :complete, do: :write_sfdc
    after_transition to: :canceled, do: :update_sfdc_state
  end

  def write_sfdc
    self.class.transaction do
      Spree::User.ensure_synced(self.email)

      HerokuConnect.sync("salesforce.order__c", {
        spree_id__c: self.id,
        name: self.number,
        total__c: self.total,
        state__c: self.state,
        contact__r__spree_email__c: self.email
      })

      line_items.each do |li|
        HerokuConnect.sync("salesforce.lineitem__c", {
          spree_id__c: li.id,
          price_unit__c: li.price,
          price_total__c: li.amount,
          quantity__c: li.quantity,
          order_id__r__spree_id__c: self.id,
          product_id__r__spree_id__c: li.variant.product_id })
      end

      if shipment = shipments.first
        address = shipment.address
        cond = { spree_email__c: self.email }
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

  def update_sfdc_state
    HerokuConnect.sync("salesforce.order__c",
      { state__c: self.state },
      { spree_id__c: self.id })
  end
end

Spree::OrderUpdater.class_eval do
  alias :persist_totals_original :persist_totals

  def persist_totals
    persist_totals_original
    update = { total__c: order.total }
    conds = { spree_id__c: order.id }
    HerokuConnect.sync("salesforce.order__c", update, conds)
  end
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
    name: :name,
    description: :description)

  def create_sfdc_pricebook_entry
    HerokuConnect.sync("salesforce.pricebookentry", {
      pricebook2id: SfdcPricebook.standard_pricebook_id,
      name: self.name,
      product2__spree_id__c: self.id,
      unitprice: self.price_in(Spree::Config[:currency]).amount.to_s
    })
  end
end

Spree::User.class_eval do
  after_save :ensure_sfdc_contact_exists

  def self.ensure_synced(email)
    return unless email
    connection.transaction(requires_new: true) do
      begin
        HerokuConnect.sync("salesforce.contact",
          email: email,
          spree_email__c: email,
          lastname: "(unnamed Spree customer)") # required to save in salesforce
      rescue ActiveRecord::RecordNotUnique
        connection.exec_rollback_to_savepoint
      end
    end
  end

  def ensure_sfdc_contact_exists
    self.class.ensure_synced(self.email)
  end
end
