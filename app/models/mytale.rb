class Mytale < ActiveRecord::Base
  belongs_to :user
  belongs_to :story
  
  validates_presence_of :content
  validates_presence_of :summary
end
