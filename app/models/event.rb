class Event < ActiveRecord::Base
  belongs_to :coaches
  belongs_to :categories
  attr_accessible :description, :title, :value
end