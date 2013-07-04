class Gender < ActiveRecord::Base
  attr_accessible :sex
  has_many :people_images
end