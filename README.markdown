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

## Heroku Connect setup:

- Open the Connect dashboard, under org type check "Production"
- Authorize with your Salesforce Org
- Click "Create Mapping", pick the "Contact" object, pick all fields (temporary, we might want to boil this down later)
- Create Mapping for "Product2" too
