class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password, :password_confirmation 

  # Relationships
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :schools
  has_many :events
  has_many :invitations

  # Validations
  # We don't need to validate_presence_of (password | password_confirmation)
  # that is taken care of with "has_secure_password" above
  validates_uniqueness_of :email
end
