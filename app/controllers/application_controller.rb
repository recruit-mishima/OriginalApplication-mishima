class ApplicationController < ActionController::Base
  # if #user is loged_in then
  #     create
  #   else if #user is not logged_in then
  #     redirect_to controller: :welcomes, action: :create
  #   else if #user is not signed_in then
  #     redirect_to controller: :welcomes, actoin: :create
  # end# Prevent CSRF attacks by raising an exception.
  # # For APIs, you may want to use :null_session instead.
  
  # protect_from_forgery with: :exception
end
