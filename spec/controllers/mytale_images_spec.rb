require 'spec_helper'

describe MytaleImagesController do
  render_views

  before(:all) do
    FactoryGirl.create(:gender)
    FactoryGirl.create(:character)
    FactoryGirl.create(:mytales_character)
    FactoryGirl.create(:story)
    FactoryGirl.create(:mytale)
    FactoryGirl.create(:people_image)
  end

  describe "GET mytale_images#new" do
    it "should render new" do
      get :new, story_id: 1, mytale_id: 1
      response.should render_template :new
    end

    it "should assign @peopleimages" do
      get :new, story_id: 1, mytale_id: 1
      expect(assigns(:peopleimages)).to eq(PeopleImage.all)
    end

    it "should assign @mytale" do
      get :new, story_id: 1, mytale_id: 1
      expect(assigns(:mytale)).to eq(Mytale.find(1))
    end

    it "should assign @mycharacter" do
      get :new, story_id: 1, mytale_id: 1
      expect(assigns(:mycharacter)).to eq(MytalesCharacter.find(1))
    end
  end


  describe "POST mytale_images#create" do
    context "with valid attributes" do
      it "should create a new mytale_image" do
        expect { post :create, story_id: 1, mytale_id: 1, people_image_id: 1 }.to change(MytaleImage,:count).by(1)
      end

      it "should update mytale_image_id in mytale" do
        post :create, story_id: 1, mytale_id: 1, people_image_id: 1
        expect(Mytale.last.mytale_image_id).to eq(MytaleImage.last.id)
      end

      it "should redirect to mytale#show upon success" do
        post :create, story_id: 1, mytale_id: 1, people_image_id: 1
        response.should redirect_to story_mytale_path(1, 1)
      end
    end

    context "with invalid attributes" do
      it "should render mytale_images#new upon failure" do
        post :create, story_id: 1, mytale_id: 1
        response.should redirect_to new_story_mytale_path(1)
      end
    end
  end
end
