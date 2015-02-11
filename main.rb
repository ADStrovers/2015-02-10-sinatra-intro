require "sinatra"
require 'rubygems'
require 'active_support'

module GasHelper
  include ActiveSupport::NumberHelper
  
  def price_per_gallon(amount, gas)
    amount.to_f / gas.to_f
  end
end

helpers GasHelper

before "/result" do
  if params == {}
    redirect to("/calculator")
  end
end
  
get "/" do
  erb :homepage
end

get "/calculator" do
  erb :calculator
end

get "/result" do
  @result = price_per_gallon(params[:amount], params[:gas_fueled])
  @name = params[:name]
  erb :result
end