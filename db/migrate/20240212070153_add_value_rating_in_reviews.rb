class AddValueRatingInReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :value_rating, :integer
  end
end
