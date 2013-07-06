class MytalesController < ApplicationController
  def new
    @story = Story.find_by_id(params[:story_id])
    @character = @story.character
    @mytale = Mytale.new
    @mytales_character = MytalesCharacter.new
    @gender = Gender.all
  end

  def create
    @story = Story.find_by_id(params[:story_id])
    @mytales_character = MytalesCharacter.create(name: params[:name], gender: Gender.find(params[:gender]), character: @story.character)
    params[:mytale][:mytales_character_id] = @mytales_character.id
    @mytale = Mytale.new(params[:mytale])
    @mytale.replace_goldilocks
    if @mytale.save
      @mytales_character.update_attributes(mytale_id: @mytale.id)
      @mytale.update_attributes(user: current_user)
      redirect_to story_mytale_path(story_id: @story.id, id: @mytale.id)
    else
      render :new
    end
  end

  def edit
  end

  def show
    story = Story.find_by_id(params[:story_id])
    @story = Mytale.find(params[:id])
    @story_paged = @story.paged.slice!(params[:slice])
    render layout: "read"
  end
end
