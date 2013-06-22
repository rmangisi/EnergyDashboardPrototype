class CreateMeters < ActiveRecord::Migration
  def change
    create_table :meters do |t|
=begin
      t.integer :status_id
      t.integer :location_id
      t.string :serialno
      t.float :vtfactor
      t.float :ctfactor

      t.timestamps
=end
    end
  end
end
