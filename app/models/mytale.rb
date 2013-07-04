class Mytale < ActiveRecord::Base
  belongs_to :user
  belongs_to :story
  
  validates_presence_of :content
  validates_presence_of :summary

  def replace_goldilocks
    m = Mytale.new
    m.content = m.content.gsub(/Goldenhair/, "Bill")
    m.summary = m.summary.gsub(/Goldilocks/, "Bill")
    m.content = m.content.gsub(/miss/, "lad")
    m.content = m.content.gsub(/Her/, "His")
    m.content = m.content.gsub(/herself/, "himself")
    m.content = m.content.gsub(/her/, "his")
    m.save
  end
end
