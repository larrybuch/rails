class HomeController < ApplicationController
  def index
  end

  def words
    x = params[:url]
    y = HTTParty.get(x)

    words = y.split(' ')

    hash = {}
    hash[:data] = words.to_sentence

    render :json => hash #when sent back to words.js is 'msg'
  end
end