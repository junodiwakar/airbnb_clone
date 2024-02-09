class Property < ApplicationRecord
  validates :name, :country, :state, :city, :headline, presence: true
end
