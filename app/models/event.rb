class Event < ActiveRecord::Base
  attr_accessible :creator_id, :name, :place_id, :time
end
