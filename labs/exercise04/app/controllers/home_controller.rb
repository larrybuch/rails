class HomeController < ApplicationController
  def stock
  end

  def output
    @stocks = params[:symbol].split(', ')
  end
end
