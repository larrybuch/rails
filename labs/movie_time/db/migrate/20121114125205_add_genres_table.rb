class AddGenresTable < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :genre
    end
  end
end