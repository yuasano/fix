class CreateSfdcToSpreeTrigger < ActiveRecord::Migration
  def up
    return if ENV["DEPLOYMENT"] == "production"
    execute <<EOF

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
  EXECUTE PROCEDURE sfdc_spree_sync_product_proc();

EOF
  end

  def down
    return if ENV["DEPLOYMENT"] == "production"
    execute "DROP TRIGGER sfdc_spree_sync_product_trigger ON salesforce.product2"
    execute "DROP FUNCTION sfdc_spree_sync_product_proc()"
  end
end
