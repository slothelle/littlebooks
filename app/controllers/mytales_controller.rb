class MytalesController < ApplicationController
  def new

    @story = Story.first
    @mytale = Mytale.new
  end

  def create
    # p params.inspect
    mainc = params[:main_character]
    @story = Story.first
    @mytale = Mytale.create(:summary => @story.summary, :content => @story.content, 
                            :title => params[:title], :main_character => mainc, 
                            :main_character_gender => params[:gender])
    @mytale.replace_goldilocks    
    render show_url(@mytale)
  end

  def edit
  end
end
