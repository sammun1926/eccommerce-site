class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :comment
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
