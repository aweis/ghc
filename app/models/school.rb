class School < ActiveRecord::Base
  attr_accessible :address, :lat, :lon, :name
end
