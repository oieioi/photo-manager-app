class Admin::ExhibitionsController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!
  before_action :set_exhibition, only: [:edit, :update, :destroy]

  def index
    @exhibitions = Exhibition.all
  end

  def new
    @exhibition = Exhibition.new
  end

  def edit
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)

    respond_to do |format|
      if @exhibition.save
        format.html { redirect_to edit_admin_exhibition_url(@exhibition), notice: 'Exhibition was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @exhibition.update(exhibition_params)
        format.html { redirect_to edit_admin_exhibition_url(@exhibition), notice: 'Exhibition was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @exhibition.destroy
    respond_to do |format|
      format.html { redirect_to admin_exhibitions_url, notice: 'Exhibition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_exhibition
      @exhibition = Exhibition.find(params[:id])
    end

    def exhibition_params
      params.fetch(:exhibition, {})
        .permit(:name,
                :description,
                photos_attributes: [:id, :image, :order, :title, :_destroy])
    end
end
