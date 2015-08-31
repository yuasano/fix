class CreateSfdcContactToSpreeUserTrigger < ActiveRecord::Migration
  def up
    execute <<EOF

CREATE FUNCTION sfdc_spree_sync_address_proc() RETURNS trigger AS $$
  BEGIN
    RAISE NOTICE 'syncing Spree contact %', NEW.spree_email__c;
    UPDATE spree_addresses
      SET
        firstname  = NEW.firstname,
        lastname   = NEW.lastname,
        phone      = NEW.phone,
        address1   = NEW.mailingstreet,
        city       = NEW.mailingcity,
        state_id   = (SELECT id FROM spree_states WHERE name = NEW.mailingstate),
        country_id = (SELECT id FROM spree_countries WHERE name = NEW.mailingcountry),
        zipcode    = NEW.mailingpostalcode
      WHERE id = (
        SELECT ship_address_id FROM spree_users WHERE email = NEW.spree_email__c
      );
    RETURN NEW;
  END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER sfdc_spree_sync_address_trigger
  AFTER UPDATE OF
    firstname,
    lastname,
    phone,
    mailingstreet,
    mailingcity,
    mailingstate,
    mailingcountry,
    mailingpostalcode
  ON salesforce.contact
  FOR EACH ROW
  WHEN (get_xmlbinary()::text != 'base64'::text)
  EXECUTE PROCEDURE sfdc_spree_sync_address_proc();

EOF
  end

  def down
    execute "DROP TRIGGER sfdc_spree_sync_address_trigger ON salesforce.contact"
    execute "DROP FUNCTION sfdc_spree_sync_address_proc()"
  end
end
