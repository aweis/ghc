class Event < ActiveRecord::Base
  attr_accessible :creator_id, :name, :place_id, :time

  # Relationships
  belongs_to :place
  belongs_to :user
  has_many :invitations
  
end
