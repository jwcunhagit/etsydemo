class Listing < ApplicationRecord
	has_many_attached :images

	validates :name, :description, :price, presence: true
end
