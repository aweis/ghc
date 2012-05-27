class Friendship < ActiveRecord::Base
  attr_accessible :approved, :friend_id, :user_id

  # Relationships
  belongs_to :user
  # http://railscasts.com/episodes/163-self-referential-association
  belongs_to :friend, :class_name => "User"

end
