class Invitation < ActiveRecord::Base
  attr_accessible :approved, :event_id, :user_id

  # Relationships
  belongs_to :event
  belongs_to :user

end
