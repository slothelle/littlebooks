class MytaleImage < ActiveRecord::Base
  belongs_to :mytales
  belgons_to :people_images
end