class AddTablePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :species
      t.integer :tennant_id
    end
  end
end
