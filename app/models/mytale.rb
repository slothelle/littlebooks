class Mytale < ActiveRecord::Base
  attr_accessible :main_character, :main_character_gender, :title, :summary, :title, :content, :user_id, :story_id

  belongs_to :user
  belongs_to :story

  validates_presence_of :content

  def replace_goldilocks
    content.gsub!(/#{story.main_character}/, main_character)
    subber = {/\bmiss\b/ => "lad", /\bHer\b/ => "His", /\bherself\b/ => "himself",
            /\bher\b/ => "his", /\bShe\b/ => "He", /\bshe\b/ => "he"}
    if main_character_gender != "Female"
      subber.each {|k,v| content.gsub!(k,v)}
    end
  end
end
