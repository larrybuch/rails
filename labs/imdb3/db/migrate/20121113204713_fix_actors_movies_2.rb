class FixActorsMovies2 < ActiveRecord::Migration
  def change
    remove_column :actors_movies, :actors_id
    add_column :actors_movies, :actor_id, :integer
  end
end
