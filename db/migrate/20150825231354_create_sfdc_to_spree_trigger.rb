class CreateSfdcToSpreeTrigger < ActiveRecord::Migration
  def up
    execute <<EOF

CREATE FUNCTION sfdc_spree_sync_product_proc() RETURNS trigger AS $$
  BEGIN
    RAISE NOTICE 'syncing Spree product #%', NEW.spree_id__c;
    UPDATE spree_products
      SET name = NEW.name, description = NEW.description
      WHERE id = NEW.spree_id__c::integer;
    RETURN NEW;
  END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER sfdc_spree_sync_product_trigger
  AFTER UPDATE OF name, description ON salesforce.product2
  FOR EACH ROW
  WHEN (get_xmlbinary()::text != 'base64'::text)
  EXECUTE PROCEDURE sfdc_spree_sync_product_proc();

EOF
  end

  def down
    execute "DROP TRIGGER sfdc_spree_sync_product_trigger ON salesforce.product2"
    execute "DROP FUNCTION sfdc_spree_sync_product_proc()"
  end
end
