class HomeController < ApplicationController
  def index
    
    require 'net/http'
    require 'json'
    
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri =URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC","LTC","NMC","PPC","DOGE","GRC","XPM","XRP","ETH","BCH","XLM","ADA","STEEM","FC",]
    
    
  end

  def about
  end
  
  def lookup
    
     require 'net/http'
    require 'json'
    
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri =URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coin = JSON.parse(@response)
    
    
    @symbol = params[:sym]
    
    if @symbol
      @symbol = @symbol.upcase
    end
    
    if @symbol == ""
      @symbol = "Hey You Forgot to Enter A Currency"
    end
  end
end
