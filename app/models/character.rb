class Character < ActiveRecord::Base
  attr_accessible :name, :story, :gender, :story_id
  belongs_to :story
  belongs_to :gender
  has_many :mytales_characters

  validates_presence_of :name, :story_id, :gender_id
  validates_length_of :name, :within => 2..20, :too_long => "must be less than 20 characters.", :too_short => "must be at least 2 characters."
end