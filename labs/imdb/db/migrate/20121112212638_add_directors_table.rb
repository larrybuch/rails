class AddDirectorsTable < ActiveRecord::Migration
  def change
    create_table :directors do |t| #t is the table object
      t.string :name
      t.integer :age
      t.string :gender
      t.timestamps
    end
  end
end

