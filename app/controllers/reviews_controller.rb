class ReviewsController < ApplicationController
    get "/reviews" do
        review = Review.all
        review.to_json
    end

    get "reviews/:id" do
        review = Review.find(params[:id])
        review.to_json
    end

    post "/reviews" do
       review = Review.create(munchie_rating:params[:munchie_rating], review_text:params[:review_text], user_id:params[:user_id], restaurant_id:params[:restaurant_id])
       status 201   #201 = created
       review.to_json
    end

    patch "reviews/:id" do
        review = Review.find(params[:id])
        review.update(munchie_rating:params[:munchie_rating], review_text:params[:review_text])
        status 202  #202 = accepted
    end

    delete "/reviews/:id" do
        review = Review.find(params[:id])
        Review.destroy
        status 204  #204 = no content
    end
end