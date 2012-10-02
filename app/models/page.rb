class Page < ActiveRecord::Base
  attr_accessible :title, :preview, :is_main, :is_special, :is_menu_element, :image, :body

  mount_uploader :image, ImageUploader
  validates :preview, :length => {:maximum => 65}
end