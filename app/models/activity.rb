class Activity < ActiveRecord::Base
	attr_accessible :title
	belongs_to :category