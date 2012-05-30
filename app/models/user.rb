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
  
  # Callbacks
  before_create { generate_token(:auth_token) }

  # This is to make a token for storing the session in a cookie
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end
  
end
