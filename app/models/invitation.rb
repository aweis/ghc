class Invitation < ActiveRecord::Base
  attr_accessible :approved, :event_id, :user_id
end
