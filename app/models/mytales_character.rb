class MytalesCharacter < ActiveRecord::Base
  attr_accessible :name, :gender, :mytale_id, :character
  belongs_to :mytale
  belongs_to :gender
  belongs_to :character
end