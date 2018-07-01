class SessionsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    #sleep 2

    @admin = Admin.new(admin_user_params)

    if @admin.login_valid?
      session[:logined_as_admin] = true
      redirect_to admin_path
    else
      @admin.password = nil
      flash[:alert] = 'invalid name and password'
      redirect_to new_session_path
    end
  end

  private

  def admin_user_params
    params.require(:admin)
      .permit(:name, :password)
  end
end
