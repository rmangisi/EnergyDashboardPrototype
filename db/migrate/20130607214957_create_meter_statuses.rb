class CreateMeterStatuses < ActiveRecord::Migration
begin
  def change
    create_table :meter_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
end
