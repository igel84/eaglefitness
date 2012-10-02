class Category < ActiveRecord::Base
  has_many :coaches
  # attr_accessible :title, :body
end
