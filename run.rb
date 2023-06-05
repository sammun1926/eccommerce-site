require_relative 'config/environment'

# Create sample instances
user1 = User.first
product1 = Product.first

# Test the methods
puts "User's reviews:"
puts user1.reviews.inspect

puts "\nProduct's reviews:"
puts product1.reviews.inspect

puts "\nUsers who reviewed the product:"
puts product1.users.inspect

puts "\nLeave a review for the product:"
product1.leave_review(user1, 5, "Excellent product!")

puts "\nAll reviews for the product:"
product1.print_all_reviews

puts "\nAverage rating for the product:"
puts product1.average_rating

puts "\nUser's favorite product:"
puts user1.favorite_product.inspect

puts "\nRemove user's reviews for the product:"
user1.remove_reviews(product1)
