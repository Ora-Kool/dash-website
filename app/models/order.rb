class Order < ApplicationRecord
	validates :name_or_business, presence: true
	validates  :email, presence: true
	validates :phone, presence: true
	validates :message, presence: true
end
