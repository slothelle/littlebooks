class MytaleImagesController < ApplicationController
  def new
    @peopleimages = PeopleImage.all
    @mytale = Mytale.find_by_id(params[:mytale_id])
    @mycharacter = MytalesCharacter.find_by_id(@mytale.mytales_character_id)
  end
end