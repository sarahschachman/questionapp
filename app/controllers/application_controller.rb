class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # TODO log filename should come from a config file
  def analyzer
    @@analytics_logger ||= Logger.new("#{Rails.root}/log/analytics.log")
  end


end
