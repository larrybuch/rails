class AddTableTennants < ActiveRecord::Migration
  def change
    create_table :tennants do |t|
      t.string :name
      t.integer :age
      t.string :gender
    end
  end
end
