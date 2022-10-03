class CreateReview < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.integer :user_id
      t.integer :restaurant_id
    end
  end
end
