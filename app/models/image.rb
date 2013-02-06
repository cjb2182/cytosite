class Image < ActiveRecord::Base
  attr_accessible :category, :description
  has_attached_file :avatar
end
