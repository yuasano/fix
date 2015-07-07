Salesforce eCommerce w/ Spree
=============================

## Customizations

* [Spree app config set in an initializer](config/initializers/spree.rb) (see [Configuration Options](https://guides.spreecommerce.com/developer/preferences.html#spree-configuration-options))
* [SCSS/Bootstrap style overrides](app/assets/stylesheets/spree/frontend/frontend_bootstrap.css.scss)
* [Unbranded view overrides](app/overrides/white_label) & their [partials](app/views/white_label) (see [Deface](https://github.com/spree/deface/blob/master/README.markdown))

## Salesforce Setup

- [Signup for a Developer Org](https://developer.salesforce.com/signup) if you don't have one yet.
- We're going to create custom fields to relate Salesforce Objects with Spree rercords. Follow the steps below twice, the 2nd time replacing "Contacts" for "Products" in the 1st step:
  - Go to Setup > Customize > `Contacts` > Fields
  - Under "Custom Fields & Relationships", click "New"
  - Set Data type to "Text"
  - Call it "spree_id"
  - Lenght 14
  - Check "External ID"
  - Click Next > Next > Save
- Create a custom object to hold orders:
  - Go to Setup > Create > Objects > New Custom Object
  - Call it "Order", allow Reports and Activities on it
  - Add custom fields "total" (Currency), "spree_id" (Text, External ID), "contact" (Lookup relationship)
- Create custom object for line items:
  - Go to Setup > Create > Objects > New Custom Object
  - Call it "LineItem"
  - Add custom fields "price" (Currency), "spree_id" (Text, External ID), "order" (Lookup relationship), product (Lookup relationship)

## Heroku Connect setup:

- Open the Connect dashboard, under org type check "Production"
- Authorize with your Salesforce Org
- Create mapping for the objects "Contact", "Product2", "Pricebook2", "PricebookEntry", "Order__c" and "LineItem__c". For now just pick all fields (temporary, we might want to filter this later)
