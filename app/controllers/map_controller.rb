class MapController < ApplicationController
  def index
  	if session[:current_uid]==nil
  		redirect_to '/user/login'
  	end
  end
end
