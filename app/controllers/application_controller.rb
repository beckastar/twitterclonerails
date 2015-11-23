class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def login(user)
 	session[:current_session] = user.id 
  end 

  def current_user
  	return nil unless session[:current_session]
  end 

end
