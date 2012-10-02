class Event < ActiveRecord::Base

  belongs_to :coaches
  belongs_to :categories
  has_many :user_events


end