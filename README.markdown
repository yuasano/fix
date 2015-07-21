Salesforce eCommerce w/ Spree
=============================

## Customizations

* [Spree app config set in an initializer](config/initializers/spree.rb) (see [Configuration Options](https://guides.spreecommerce.com/developer/preferences.html#spree-configuration-options))
* [SCSS/Bootstrap style overrides](app/assets/stylesheets/spree/frontend/frontend_bootstrap.css.scss)
* Views:
  * [Rails Engine view overrides](app/views/spree)
  * [Deface view overrides](app/overrides/white_label) (see [Deface](https://github.com/spree/deface/blob/master/README.markdown))
  * various [partials](app/views/white_label) called from overrides

## Salesforce Setup

- [Signup for a Developer Org](https://developer.salesforce.com/signup) if you don't have one yet.
- Create a custom field in the Contact object so we can relate it to customers in Spree:
  - Go to Setup > Customize > Contacts > Fields
  - Under "Custom Fields & Relationships", click "New"
  - Set Data type to "Text"
  - Call it "spree_email"
  - Check "External ID"
  - Click Next > Next > Save
- Create a similar custom field to tie products too:
  - Go to Setup > Customize > Products > Fields
  - Under "Custom Fields & Relationships", click "New"
  - Set Data type to "Text"
  - Call it "spree_id"
  - Check "External ID"
  - Click Next > Next > Save
- Create a custom object to hold orders:
  - Go to Setup > Create > Objects > New Custom Object
  - Call it "Order", allow Reports and Activities on it
  - Add custom fields "total" (Currency 10,2), "spree_id" (Text, External ID), "contact" (Lookup relationship)
    - Make sure to add 2 decimal places for the Currency field!
- Create custom object for line items:
  - Go to Setup > Create > Objects > New Custom Object
  - Call it "LineItem"
  - Add custom fields "quantity" (Number), price_unit" (Currency 10,2), "price_total" (Currency 10,2), "spree_id" (Text, External ID), "order" (Lookup relationship), product (Lookup relationship)
- And finally, Spree needs to know what Price Book you want to use for this integration in SFDC:
  - In the tabs at the top, click the `+` sign
  - Pick "Price Books"
  - Click the "Standard Price Book"
  - Note the ID in the URL (eg: na41.salesforce.com/`01sABCD`). Set that as the `PRICEBOOK_ID` in the environment

## Heroku Connect setup:

- Open the Connect dashboard, under org type check "Production"
- Authorize with your Salesforce Org
- Create mapping for the objects "Contact", "Product2", "Pricebook2", "PricebookEntry", "Order__c" and "LineItem__c". For now just pick all fields (temporary, we can filter this later)
