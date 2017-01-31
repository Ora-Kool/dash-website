class Admin < ApplicationRecord
	attr_accessor :remember_token
	validates :name, presence: true
	validates :password, presence: true, length: { minimum: 5 }, allow_nil: true

	has_secure_password


	# Returns the hash digest of the given string.
  def Admin.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  #this method returns a random user token
  def Admin.new_token
    SecureRandom.urlsafe_base64
  end

  #this instance method helps to remember a user in the database
  def remember
    self.remember_token = Admin.new_token
    update_attribute(:remember_digest, Admin.digest(remember_token))
  end

  #check if a given token matches that stored one and return true else false
  def authenticated?(remmber_token)
    BCrypt::Password.new(remember_digest).is_password?(remmber_token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end


end
