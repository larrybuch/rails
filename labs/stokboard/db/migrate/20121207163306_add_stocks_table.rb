class AddStocksTable < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string  :name
      t.string  :time
      t.float   :quote
    end
  end
end
