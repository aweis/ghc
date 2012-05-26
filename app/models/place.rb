class Place < ActiveRecord::Base
  attr_accessible :lat, :lon, :name, :school_id
end
