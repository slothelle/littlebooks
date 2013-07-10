require 'spec_helper'

describe StoriesController do
  render_views

  before do
    FactoryGirl.create(:story)
    FactoryGirl.create(:gender)
  end

  describe "GET stories#index" do
    it "should render index" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET stories#show" do
    it "should render show" do
      get :show, id: Story.last.id
      response.should render_template :show
    end
  end
end
