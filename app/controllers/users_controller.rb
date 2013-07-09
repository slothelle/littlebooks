class UsersController < ApplicationController
  def new
    @user = User.new
    render "_new"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      create_session
      UserMailer.welcome_signup(@user).deliver
      redirect_to @user
    else
      @error = @user.errors.full_messages.join(". ")
      render "_new"
    end
  end

  def show
    @user = User.find(params[:id])
    @mytales = @user.mytales
    mytaleimages =[]
    @mytales.each do |mytale|
      mytaleimages << MytaleImage.find_by_id(mytale.mytale_image_id)
    end
    @images =[]
    mytaleimages.each do |mytaleimage|
      @images << PeopleImage.find_by_id(mytaleimage.people_image_id)
    end
  end
end

# mytales.each do |mytale|
#   mytaleimages << MytaleImage.find_by_id(mytale.mytale_image_id)
# end

# mytaleimages.each do |mytaleimage|
#   images << PeopleImage.find_by_id(mytaleimage.people_image_id)
# end