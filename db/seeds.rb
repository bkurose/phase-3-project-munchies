puts "🌱 Seeding spices..."
puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating restaurants..."
shack = Restaurant.create(name: "Karen's Pizza Shack", description: "Karen's Pizza Shack opened on Thanksgiving Day 1990. Chef / Owner Karen Karenton began making pizzas and selling them to restaurants and his neighbors out of a small kitchen at the corner of Somewhere and Anywhere St. in Nowhereville. Today, Nowhereville's beloved restaurant and pizza shop celebrates 27 years of classic, made from scratch American cooking." image_url: "https://i.postimg.cc/xd3Sp8ct/Pizza-Shack.jpg")
bistro = Restaurant.create(name: "Sanjay's Pizza Bistro", description: "The fabric of Sanjay's Pizza Bistro was born out of love and respect for these humble flattened creations, met with a desire to bring quality ingredients to the table. Simply put, we're here to bring you a pizza experience you can feel good about.", image_url: "https://i.postimg.cc/XvJgmDvm/The-Pizza-Bistro.png")
palace = Restaurant.create(name: "Kiki's Pizza Palace", description: "Kiki's Pizza Palace bridges the traditional with the contemporary, bringing live-fire cooking, housemade pizzas, and a robust Italian flavor profile to the heart of Nowhereville.", image_url: "https://i.postimg.cc/505j3fVV/Pizza-Palace.png")
emporium = Restaurant.create(name: "Pablo's Pizza Emporium", description: "Pablo's Pizza Emporium - Voted best pizza in Nowhereville 5 years in a row! Come get you some!", image_url: "https://i.postimg.cc/Ssmmm8wB/Pizza-Emporium.jpg" )

puts "Creating users..."
baby_spice = User.create(first_name: "Emma", last_name: "Bunton")
ginger_spice = User.create(first_name: "Geri", last_name: "Halliwell")
scary_spice = User.create(first_name: "Melanie", last_name: "Brown")
sporty_spice = User.create(first_name: "Melanie", last_name: "Chisholm")
posh_spice = User.create(first_name: "Victoria", last_name: "Addams")

puts "Creating reviews..."
Review.create(munchie_rating: 2, review_text: "Meh, I've had better.", restaurant_id: palace.id, user_id: posh_spice.id)
Review.create(munchie_rating: 5, review_text: "Best pizza on planet Earth!", restaurant_id: bistro.id, user_id: sporty_spice.id)
Review.create(munchie_rating: 1, review_text: "Ordered pepperoni, got roaches instead.", restaurant_id: shack.id, user_id: baby_spice.id)
Review.create(munchie_rating: 3, review_text: "Food was great; staff was rude", restaurant_id: emporium.id, user_id: scary_spice.id)
Review.create(munchie_rating: 4, review_text: "Definitely in my top 5 pizza places!", restaurant_id: bistro.id, user_id: ginger_spice.id)

puts "✅ Done seeding!"
