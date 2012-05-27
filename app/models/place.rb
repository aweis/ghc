class Place < ActiveRecord::Base
  attr_accessible :lat, :lon, :name, :school_id

  # Relationships
  belongs_to :school
  has_many :events
end
