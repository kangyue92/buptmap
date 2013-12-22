class UserController < ApplicationController
  def login
  end

  def logout
  	reset_session
  	flash[:notice] = "You have successfully logged out."
  	redirect_to '/'
  end
end
