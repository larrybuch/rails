class AddTableApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name
      t.integer :rooms
      t.decimal :rent
    end
  end
end
