class Product < ActiveRecord::Base
    # ...
  
    def reviews
      Review.where(product_id: id)
    end
  
    def users
      User.joins(:reviews).where(reviews: { product_id: id })
    end
  
    def leave_review(user, star_rating, comment)
      Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
    end
  
    def print_all_reviews
      reviews.each do |review|
        puts "Review for #{name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
      end
    end
  
    def average_rating
      total_ratings = reviews.sum(:star_rating)
      total_reviews = reviews.count
  
      average = total_reviews > 0 ? total_ratings.to_f / total_reviews : 0.0
      average.round(2)
    end
  end
  