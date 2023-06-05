class Review < ActiveRecord::Base
    # ...
  
    def user
      User.find(user_id)
    end
  
    def product
      Product.find(product_id)
    end
  end
  