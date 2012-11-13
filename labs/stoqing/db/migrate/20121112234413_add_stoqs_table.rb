class AddStoqsTable < ActiveRecord::Migration
  def change
    create_table :stoqs do |t|
      t.string :symbol
      t.decimal :quote
      t.timestamps
    end
  end
end
