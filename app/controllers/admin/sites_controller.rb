class Admin::SitesController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!

  def edit
  end

  def update
    respond_to do |format|
      if @site.update(site_params)
        format.html { redirect_to admin_path, notice: 'Site was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    def site_params
      params.require(:site).permit(:name,
                                   :email,
                                   :author_name,
                                   :description)
    end
end
