class MoviesController < ApplicationController
  def get_movie
  end
  def show_movie
    movie_name = params[:movies].split(', ')
    @movies = movie_name.map{|name| JSON(HTTParty.get("http://www.omdbapi.com/?t=#{name.gsub(' ', '+')}")) }
    # binding.pry
  end
end