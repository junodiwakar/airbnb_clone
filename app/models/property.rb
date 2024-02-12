class Property < ApplicationRecord
  validates :name, :country, :state, :city, :headline, presence: true
  monetize :price_cents, allow_nil: true
  has_many_attached :images
end
