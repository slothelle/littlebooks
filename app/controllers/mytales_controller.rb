class MytalesController < ApplicationController
  def new
    @story = Story.find_by_id(params[:story_id])
    @mytale = Mytale.new
  end

  def create
    params[:mytale][:user_id] = @current_user.id
    @story = Story.find_by_id(params[:story_id])
    @mytale = Mytale.new(params[:mytale])
    @mytale.replace_goldilocks
    if @mytale.save
      redirect_to story_mytale_path(story_id: @story.id, id: @mytale.id)
    else
      render :new
    end
  end

  def edit
  end

  def show
    @story = Story.find_by_id(params[:story_id])
    @mytale = Mytale.find(params[:id])
  end
end
