class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def get_reviews
        self.restaurant.reviews
    end
end