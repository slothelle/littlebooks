class Character < ActiveRecord::Base
  attr_accessible :name, :story, :gender
  belongs_to :story
  belongs_to :gender
  has_many :mytale_characters
end