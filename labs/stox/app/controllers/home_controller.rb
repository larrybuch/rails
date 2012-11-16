class HomeController < ApplicationController
  def create
  end
  
  def output
    @symbol = params[:symbol].upcase
    number = params[:number].to_i

    number.times do
      sleep 1
      quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
      Stock.create(:symbol => @symbol, :quote => quote)
    end
  end
end
