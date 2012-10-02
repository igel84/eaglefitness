class CoachC < ActiveRecord::Base
  belongs_to :coach
  attr_accessible :name
  attr_accessor :my_attribute
end
