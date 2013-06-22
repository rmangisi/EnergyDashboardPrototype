class CreateReadings < ActiveRecord::Migration
=begin
  def change
    create_table :readings do |t|
      t.float :powerphase1
      t.float :powerphase2
      t.float :powerphase3
      t.float :powertotal
      t.datetime :metertimestamp

      t.timestamps
    end
  end
=end
end
