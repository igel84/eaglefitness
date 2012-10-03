class Event < ActiveRecord::Base

  belongs_to :coaches
  belongs_to :categories
  has_many :user_events

 attr_accessible :title, :couch_id, :category_id, :coach_id, :value, :description


end