class School < ActiveRecord::Base
  attr_accessible :address, :lat, :lon, :name

  # Relationships
  belongs_to :user
  has_many :places

end
