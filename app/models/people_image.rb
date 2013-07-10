class PeopleImage < ActiveRecord::Base
  attr_accessible :gender, :url, :gender_id

  belongs_to :gender

  validates_presence_of :gender, :url, :gender_id
end