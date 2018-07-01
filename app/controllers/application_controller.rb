class ApplicationController < ActionController::Base

  def authenticate_admin!
    return if session[:logined_as_admin] == true
    render_403
  end

  private

  def render_403
    render 'errors/403', status: 403
  end
end
