class HomeController < ApplicationController
  def stock
  end
  def output
    @symbol = params[:symbol].upcase
    number = params[:number].to_i
    sleep = params[:sleep].to_i
    @quotes_array = []

    number.times do
      sleep sleep
    end

    @average = @quotes_array.inject{ |sum, el| sum + el }.to_f / @quotes_array.size

  end
end
