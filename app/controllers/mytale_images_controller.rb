class MytaleImagesController < ApplicationController
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
      redirect_to new_story_mytale_path(story_id: @mytale.story_id)
    end
  end
end