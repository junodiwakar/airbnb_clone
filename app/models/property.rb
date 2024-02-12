class Property < ApplicationRecord
  validates :name, :country, :state, :city, :headline, presence: true
  monetize :price_cents, allow_nil: true
  has_many_attached :images
  has_many :reviews, dependent: :destroy

  def update_average_rating 
    average_rating = reviews.average(:final_rating)
    update_column(:average_final_rating, average_rating)
  end

end
