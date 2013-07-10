class MytaleImagesController < ApplicationController
  def index
    grab_all_images
  end

  def new
    grab_all_images
    @mytale = Mytale.find_by_id(params[:mytale_id])
    @mycharacter = MytalesCharacter.find_by_id(@mytale.mytales_character_id)
  end

  def create
    @mytale = Mytale.find_by_id(params[:mytale_id])
    create_mytale_image
    if @myimage.save
      @mytale.update_attribute(:mytale_image_id, @myimage.id)
      redirect_to story_mytale_path(story_id: @mytale.story_id, id: @mytale.id)
    else
      @error = @myimage.errors.full_messages.join(". ")
      grab_story_character
      grab_all_genders
      @story_paged = @story.paged.slice!(5)
      render "stories/show", story_id: @mytale.story
    end
  end
end