class RestaurantsController < ApplicationController
    get "/restaurants" do
        restaurant = Restaurant.all
        restaurant.to_json
    end

    get "/restaurants/:id" do
        restaurant = Restaurant.find(params[:id])
        restaurant.to_json
    end

    get "/restaurants/:id/top_review" do
        restaurant = Restaurant.top_review
        restaurant.to_json
    end

    get "/restaurants/:id/all_reviews" do
        restaurant = Restaurant.all_reviews
        restaurant.to_json
    end


    post "/restaurants" do
       restaurant = Restaurant.create(name:params[:name], description:params[:description], image_url:params[:image_url])
       status 201   #201 = created
       restaurant.to_json
    end

    delete "/restaurants/:id" do
        restaurant = Restaurant.find(params[:id])
        Restaurant.destroy
        status 204  #204 = no content
    end 
end