class AddDataTable < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.integer   :zip
      t.float     :lat
      t.float     :lon
      t.string    :building_type
      t.integer   :kwh
      t.timestamps
    end
  end
end
