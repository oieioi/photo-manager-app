class ApplicationController < ActionController::Base
  before_action :load_masters


  def authenticate_admin!
    return if session[:logined_as_admin] == true
    render_403
  end

  private

  def load_masters
    @exhibitions = Exhibition.all
  end

  def render_403
    render 'errors/403', status: 403
  end
end
