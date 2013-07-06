class Gender < ActiveRecord::Base
  attr_accessible :sex
  has_many :people_images
  has_many :characters
  has_many :mytales_character
  validates_presence_of :sex
end