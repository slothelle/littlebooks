class Mytale < ActiveRecord::Base
  attr_accessible :main_character, :main_character_gender, :title, :summary, :title, :content

  belongs_to :user
  belongs_to :story
  
  validates_presence_of :content
  validates_presence_of :summary

  def replace_goldilocks(gender, mainc)
   content.gsub!(/Goldenhair/, mainc)
   summary.gsub!(/Goldilocks/, mainc)
   if gender != "Female"
     content.gsub!(/\bmiss\b/, "lad")
     content.gsub!(/\bHer\b/, "His")
     content.gsub!(/\bherself\b/, "himself")
     content.gsub!(/\bher\b/, "his")
     content.gsub!(/\bShe\b/, "He")
     content.gsub!(/\bshe\b/, "he")
   end
  end
end
