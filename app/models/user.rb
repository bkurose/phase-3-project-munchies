class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def top_restaurants
        self.restaurants.order(:munchie_rating)
    end

    def add_review(restaurant, rating)
        Review.create(
            restaurant_id: restaurant.id,
            munchie_rating: rating,
        )
    end

    def delete_reviews(restaurant)
        self.reviews.where(restaurant_id: restaurant.id).destroy_all
    end
end