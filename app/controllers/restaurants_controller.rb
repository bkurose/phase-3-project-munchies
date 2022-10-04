class RestaurantsController < ApplicationController
    get "/restaurants" do
        restaurant = Restaurant.all
        restaurant.to_json
    end

    get "restaurants/:id" do
        restaurant = Restaurant.find(params[:id])
        restaurant.to_json
    end

    post "/restaurants" do
       restaurant = Restaurant.create(name:params[:name])
       status 201   #201 = created
       restaurant.to_json
    end

    delete "/restaurants/:id" do
        restaurant = Restaurant.find(params[:id])
        Restaurant.destroy
        status 204  #204 = no content
    end 
end