class User < ActiveRecord::Base
    # ...
  
    def reviews
      Review.where(user_id: id)
    end
  
    def products
      Product.joins(:reviews).where(reviews: { user_id: id })
    end
  
    def favorite_product
      reviews.order(star_rating: :desc).first&.product
    end
  
    def remove_reviews(product)
      Review.where(user_id: id, product_id: product.id).destroy_all
    end
  end
  