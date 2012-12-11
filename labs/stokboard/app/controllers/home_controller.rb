class HomeController < ApplicationController
  def index

  end

  def create

    quote_type = YahooFinance::StandardQuote
    quote_symbol = params[:quote]

    stock = YahooFinance::get_quotes(quote_type, quote_symbol)

    Stock.create(:name => quote_symbol, :time => stock[quote_symbol].time, :quote => stock[quote_symbol].lastTrade)
  end

  def return
    stocks = Stock.all
    render :json => stocks
  end
end