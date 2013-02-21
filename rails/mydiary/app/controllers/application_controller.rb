# Filters added to this controller will be run for all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
  
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  before_filter :count_requests_in_session, :count_requests_in_session_once_more
  
  def count_requests_in_session
    session[:requests] ||= 0
    session[:requests] += 1
  end
  
  def count_requests_in_session_once_more
    session[:requests] ||= 0
    session[:requests] += 1
  end
end
