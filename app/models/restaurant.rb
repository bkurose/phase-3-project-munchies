class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def get_reviews
        self.restaurant.reviews
    end

    def self.average_rating
        self.reviews.all.average(:munchie_rating).to_i
    end
end