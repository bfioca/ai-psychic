class ApplicationController < ActionController::Base
  layout 'application'

  add_flash_types :info, :danger, :warning, :success
end
