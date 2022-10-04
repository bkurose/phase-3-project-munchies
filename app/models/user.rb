class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def top_restaurants
        self.restaurants.order(:munchie_rating)[0 ... 5] #<--- unsure if working or not
    end

    def add_review(restaurant, rating)
        Review.create(
            #placeholder
        )
    end
end