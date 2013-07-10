require 'spec_helper'

describe MytaleImagesController do
  render_views

  before do
    FactoryGirl.create(:gender)
    FactoryGirl.create(:story)
    FactoryGirl.create(:character)
    FactoryGirl.create(:mytale)
    FactoryGirl.create(:mytales_character)
    FactoryGirl.create(:people_image)
  end

  describe "GET mytale_images#new" do
    it "should render new" do
      get :new, story_id: Story.last.id, mytale_id: Mytale.last.id
      response.should render_template :new
    end
  end
end
