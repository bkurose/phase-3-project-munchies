class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def top_review
        self.reviews.order(munchie_rating: :desc).first
    end

    def all_reviews
        self.reviews.all
    end
end