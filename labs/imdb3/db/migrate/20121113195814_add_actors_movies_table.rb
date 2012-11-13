class AddActorsMoviesTable < ActiveRecord::Migration
  def change
    create_table :actors_movies, :id => false do |t|
      t.string :name
    end
  end
end
