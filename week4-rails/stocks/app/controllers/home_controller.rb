class HomeController < ApplicationController

  def start
  end

  def error
  end

  def search

    @symbol = params[:stock]
    @symbol.upcase!
    @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)

    render '/error' if @quote[@symbol].lastTrade==0

  end

end