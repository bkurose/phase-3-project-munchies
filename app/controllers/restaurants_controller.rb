class RestaurantsController < ApplicationController
    get "/restaurants" do
        restaurant = Restaurant.all
        restaurant.to_json
    end

    get "/restaurants/:id" do
        restaurant = Restaurant.find(params[:id])
        restaurant.to_json
    end

    get "/restaurants/:id/topreview" do
        restaurant = Restaurant.find(params[:id])
        topReview = restaurant.top_review
        topReview.to_json
    end

    get "/restaurants/:id/allreviews" do
        restaurant = Restaurant.find(params[:id])
        allReviews = restaurant.all_reviews
        allReviews.to_json
    end
    
    get "/restaurants/:id/averagerating" do
        restaurant = Restaurant.find(params[:id])
        averageRating = restaurant.average_rating
        averageRating.to_json
    end

    get "/toprestaurants" do
        restaurant = Restaurant.top_restaurant
        restaurant.to_json
    end


    post "/restaurants" do
       restaurant = Restaurant.create(name:params[:name], description:params[:description], image_url:params[:image_url])
       status 201   #201 = created
       restaurant.to_json
    end

    delete "/restaurants/:id" do
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        status 204  #204 = no content
    end 
end