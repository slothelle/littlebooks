class MytaleImage < ActiveRecord::Base
  belongs_to :mytale
  belongs_to :people_image
  validates_presence_of :mytale_id, :people_image_id
  attr_accessible :mytale_id, :people_image_id
end
