class MytaleImage < ActiveRecord::Base
  attr_accessible :mytale_id, :people_image_id

  belongs_to :mytale
  belongs_to :people_image

  validates_presence_of :mytale_id, :people_image_id
end
