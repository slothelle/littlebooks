class MytaleImagesController < ApplicationController
  def new
    @peopleimages = PeopleImage.all
    @mytale = Mytale.find_by_id(params[:mytale_id])
    @mycharacter = MytalesCharacter.find_by_id(@mytale.mytales_character_id)
  end

  def create
    @mytale = Mytale.find_by_id(params[:mytale_id])
    @myimage = MytaleImage.new(people_image_id: params[:people_image_id], mytale_id: params[:mytale_id])
    if @myimage.save
      @mytale.update_attribute(:mytale_image_id, @myimage.id)
      redirect_to story_mytale_path(story_id: @mytale.story_id, id: @mytale.id)
    else
      render :create
    end
  end
end