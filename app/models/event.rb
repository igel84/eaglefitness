class Event < ActiveRecord::Base
  attr_accessible :description, :title, :value
end