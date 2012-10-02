class Coach < ActiveRecord::Base
  attr_accessible :name, :special, :info
  accepts_nested_attributes_for :scheduled_activity
  belongs_to :category
  has_one :activity
end