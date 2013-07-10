require 'spec_helper'

# feel free to get a second opinion but I personally feel that these tests
# are unnecessary. your integration tests should already execute most of the code
# covered here... my opinion here applies to other controller test examples as well
describe StoriesController do
  render_views

  before do
    FactoryGirl.create(:story)
    FactoryGirl.create(:gender)
  end

  describe "GET stories#index" do # unnecessary
    it "should render index" do # unnecessary
      get :index
      response.should render_template :index
    end

    it "should assign @story" do # unnecessary
      get :index
      expect(assigns(:story)).to be_an_instance_of(Story)
    end

    it "should assign @mytale" do # unnecessary
      get :index
      expect(assigns(:mytale)).to be_an_instance_of(Mytale)
    end

    it "should assign @character" do # unnecessary
      get :index
      expect(assigns(:character)).to be_an_instance_of(Character)
    end

    it "should assign @mytales_character" do # unnecessary
      get :index
      expect(assigns(:mytales_character)).to be_an_instance_of(MytalesCharacter)
    end

    it "should assign @gender" do # unnecessary
      get :index
      expect(assigns(:gender)).to eq(Gender.all)
    end

    it "should assign @story_paged" do # unnecessary
      get :index
      expect(assigns(:story_paged)).to be_true
    end
  end

  describe "GET stories#show" do
    it "should render show" do # unnecessary
      get :show, id: Story.last.id
      response.should render_template :show
    end

    it "should assign @story" do # unnecessary
      get :show, id: Story.last.id
      expect(assigns(:story)).to eq(Story.last)
    end

    it "should assign @story_paged" do # unnecessary
      get :show, id: Story.last.id
      expect(assigns(:story_paged)).to be_true
    end
  end
end
