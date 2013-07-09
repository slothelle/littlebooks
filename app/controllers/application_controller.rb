class ApplicationController < ActionController::Base
  include ApplicationHelper
  include MytaleHelper
  protect_from_forgery
  before_filter :current_user
end
