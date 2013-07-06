class PeopleImage < ActiveRecord::Base
  belongs_to :gender
  belongs_to :ethnicity
  validates_presence_of :gender, :ethnicity, :url
end