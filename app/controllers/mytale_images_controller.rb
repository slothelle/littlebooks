class MytaleImagesController < ApplicationController
  def new
    @peopleimages = PeopleImage.all
    @mytale = Mytale.find_by_id(params[:mytale_id])
    @mycharacter = MytalesCharacter.find_by_id(@mytale.mytales_character_id)
  end

  def create
    @myimage = MytaleImage.new(params)
    if @myimage.save
      # magic
    else
      # poop
    end
  end
end