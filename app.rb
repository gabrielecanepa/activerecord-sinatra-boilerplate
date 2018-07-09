require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end

get "/restaurant" do
  erb :create
end

post "/restaurant" do
  name = params[:name]
  address = params[:address]
  restaurant = Restaurant.create(name: name, address: address)
  redirect "/restaurants/#{restaurant.id}"
end
