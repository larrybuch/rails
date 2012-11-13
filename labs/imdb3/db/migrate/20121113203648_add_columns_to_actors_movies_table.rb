class AddColumnsToActorsMoviesTable < ActiveRecord::Migration
  def change
    add_column :actors_movies, :actors_id, :integer
    add_column :actors_movies, :movies_id, :integer
    remove_column :actors_movies, :name
  end
end
