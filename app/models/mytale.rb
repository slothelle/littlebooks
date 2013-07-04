class Mytale < ActiveRecord::Base
  attr_accessible :main_character, :main_character_gender, :title

  belongs_to :user
  belongs_to :story
  
  validates_presence_of :content
  validates_presence_of :summary

  def replace_goldilocks
   content.gsub(/Goldenhair/, :main_character)
   summary.gsub(/Goldilocks/, :main_character)
   if params[:gender] != "female"
     content.gsub(/miss/, "lad")
     content.gsub(/Her/, "His")
     content.gsub(/herself/, "himself")
     content.gsub(/her/, "his")
   end
  end
end
