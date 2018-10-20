class Listing < ApplicationRecord
	has_many_attached :images


	validates :name, :description, :price, presence: true

	# https://github.com/musaffa/file_validators
	validates :images, file_size: { less_than_or_equal_to: 100.kilobytes },
                     file_content_type: { allow: ['image/jpeg', ['image/png']] }


    # https://gist.github.com/carlosramireziii/73f2c7b12dd6716482e41a3cd8e0a94d#file-attached_validator-rb
    validates :images, attached: true

    belongs_to :user
    has_many :orders
end