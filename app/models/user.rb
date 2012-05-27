class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password, :password_confirmation 

  # Validations
  # We don't need to validate_presence_of (password | password_confirmation)
  # that is taken care of with "has_secure_password" above
  validates_uniqueness_of :email
end
