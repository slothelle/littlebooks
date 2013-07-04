class PeopleImage < ActiveRecord::Base
  belongs_to :gender
  belongs_to :ethnicity 
end