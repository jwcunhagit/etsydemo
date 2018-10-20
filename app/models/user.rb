class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
	 :recoverable, :rememberable, :validatable


	validates :first_name, :last_name, presence: true


	has_many :listings, dependent: :destroy 
	has_many :sales, class_name: "Order", foreign_key: "seller_id"
	has_many :purchase, class_name: "Order", foreign_key: "buyer_id"
end
