class CreateSfdcToSpreeTrigger < ActiveRecord::Migration
  def up
    return if ENV["DEPLOYMENT"] == "production"
    execute <<EOF

-- This is used by Heroku Connect to establish who is running the statement.
-- Returns 'base64' on the user session, something else when Connect is running
CREATE FUNCTION get_xmlbinary() RETURNS varchar AS $$
  BEGIN
    RETURN 'heroku-connect'; 
  END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION sfdc_spree_sync_product_proc() RETURNS trigger AS $$
  BEGIN
    RAISE NOTICE 'syncing Spree product #%', NEW.spree_id__c;
    UPDATE spree_products
      SET name = NEW.name
      WHERE id = NEW.spree_id__c::integer;
    RETURN NEW;
  END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER sfdc_spree_sync_product_trigger
  AFTER UPDATE OF name ON salesforce.product2
  FOR EACH ROW
  WHEN (get_xmlbinary()::text != 'base64'::text)
  EXECUTE PROCEDURE sfdc_spree_sync_product_proc();

EOF
  end

  def down
    return if ENV["DEPLOYMENT"] == "production"
    execute "DROP TRIGGER sfdc_spree_sync_product_trigger ON salesforce.product2"
    execute "DROP FUNCTION sfdc_spree_sync_product_proc()"
    execute "DROP FUNCTION get_xmlbinary()"
  end
end
