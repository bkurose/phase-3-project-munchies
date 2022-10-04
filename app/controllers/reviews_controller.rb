class ReviewsController < ApplicationController
    get "/reviews" do
        reviews = Review.all
        reviews.to_json
    end

    get "reviews/:id" do
        reviews = Review.find(params[:id])
        reviews.to_json
    end

    post "/reviews" do
       reviews = Review.create(name:params[:name])
       status 201   #201 = created
       reviews.to_json
    end

    delete "/reviews/:id" do
        reviews = Review.find(params[:id])
        Review.destroy
        status 204  #204 = no content
    end
end