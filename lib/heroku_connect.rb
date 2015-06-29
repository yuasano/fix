module HerokuConnect
  extend ActiveSupport::Concern

  module ClassMethods
    def heroku_connect(table, mapping={})
      cattr_accessor :sfdc_table
      cattr_accessor :sfdc_mapping
      after_save :sync_to_sfdc
      self.sfdc_table = table
      self.sfdc_mapping = mapping

      include HerokuConnect::InstanceMethods
    end
  end

  module InstanceMethods
    def sync_to_sfdc
      table = Arel::Table.new(self.class.sfdc_table)
      sfdc_id_column = nil

      updates = self.class.sfdc_mapping.map do |column, attr|
        if attr == :id
          sfdc_id_column = column
          next
        end

        [table[column], self.send(attr)]
      end.compact

      # can't use new_record?, it's always false on after_save hooks
      if id_changed?
        updates << [table[sfdc_id_column], self.id]
        manager = Arel::InsertManager.new(ActiveRecord::Base)
        manager.into(table).insert(updates)
      else
        manager = Arel::UpdateManager.new(ActiveRecord::Base)
        manager.table(table).set(updates).where(table[sfdc_id_column].eq(self.id))
      end

      self.class.connection.execute(manager.to_sql)
    end
  end
end

ActiveRecord::Base.send :include, HerokuConnect
