class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
  end

  def create    
    movie_name = params[:name]
    Movie.create(:name => movie_name)
    redirect_to movies_path
  end
end