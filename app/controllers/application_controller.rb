class ApplicationController < ActionController::Base
  before_action :load_masters

  def authenticate_admin!
    return if authenticated?
    render_403
  end

  def authenticated?
    session[:logined_as_admin] == true
  end

  private

  def load_masters
    @exhibitions = Exhibition.all
    @texts = Text.published
    @site = Site.first
  end

  def render_403
    render 'errors/403', status: 403, layout: nil
  end
end
