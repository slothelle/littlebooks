class PeopleImage < ActiveRecord::Base
  attr_accessible :gender, :url
  belongs_to :gender
  validates_presence_of :gender, :url
end