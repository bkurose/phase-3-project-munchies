class CreateRestaurant < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
    end
  end
end
