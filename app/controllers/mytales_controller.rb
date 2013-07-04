class MytalesController < ApplicationController
  def new

    @story = Story.first
    @mytale = Mytale.new
  end

  def create
    # p params.inspect
    mainc = params[:main_character]
    gender = params[:gender]
    @story = Story.first
    @mytale = Mytale.new(:summary => @story.summary, :content => @story.content, 
                            :title => params[:title], :main_character => mainc, 
                            :main_character_gender => params[:gender])
    @mytale.replace_goldilocks(gender, mainc) 
    @mytale.save   
    redirect_to @mytale
  end

  def edit
  end

  def show
    @story = Story.first
    @mytale = Mytale.find(params[:id])
  end
end
