class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews


    def all_reviews
        self.reviews.all
    end

    def get_reviews
        self.restaurant.reviews
    end

    def average_rating
        "#{self.reviews.all.average(:munchie_rating).to_i} 🍴"
    end

    def top_review
        self.reviews.order(munchie_rating: :desc).first
    end
end