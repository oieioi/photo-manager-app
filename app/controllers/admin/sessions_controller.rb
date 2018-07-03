class Admin::SessionsController < ApplicationController

  def new
    if authenticated?
      redirect_to admin_dashboard_index_path
    else
      @admin = Admin.new
    end
  end

  def create
    #sleep 2

    @admin = Admin.new(admin_user_params)

    if @admin.login_valid?
      create_session
      redirect_to admin_path
    else
      @admin.password = nil
      flash[:alert] = 'invalid name and password'
      redirect_to admin_path
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

  def admin_user_params
    params.require(:admin)
      .permit(:name, :password)
  end

  def create_session
    session[:logined_as_admin] = true
  end

  def reset_session
    session[:logined_as_admin] = nil
  end

end
