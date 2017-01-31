class Contact < ApplicationRecord
	validates :first_name, presence: true
	validates :surname, presence: true
	validates  :email, presence: true
    validates	:phone_number, presence: true
    validates	:subject, presence: true
    validates	:content, presence: true
end
