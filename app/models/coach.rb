class Coach < ActiveRecord::Base
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_one :coach_c
  belongs_to :user
  attr_accessor :coach_c_id
   attr_accessible :coach_c_id
  delegate  :name, :password, :password_confirmation, :remember_me, :role, :to => :user
end
