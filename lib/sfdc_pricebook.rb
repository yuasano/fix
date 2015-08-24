module SfdcPricebook
  def self.standard_pricebook_id
    Rails.cache.fetch("sfdc_pricebook_id") do
      row = ActiveRecord::Base.connection.select_one(
        "SELECT sfid FROM salesforce.pricebook2 WHERE isstandard = TRUE")

      if !row
        raise "Missing standard Pricebook in Salesforce"
      end

      row["sfid"]
    end
  end
end