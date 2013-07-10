class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery
  before_filter :current_user
end
