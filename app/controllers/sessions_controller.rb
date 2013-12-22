class SessionsController < ApplicationController
  def create
    #@user = User.find_or_create_from_auth_hash(auth_hash)
    #self.current_user = @user
    #Rails.logger.debug("#{auth_hash}")
    session[:current_uid]=auth_hash.uid
    session[:image]=auth_hash.info.image
    session[:name]=auth_hash.info.name
    session[:weibo]=auth_hash.info.urls.Weibo

    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
