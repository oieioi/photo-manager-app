class Admin::TextsController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!
  before_action :set_text, only: [:show, :edit, :update, :destroy]

  def index
    @texts = Text.all
  end

  def new
    @text = Text.new
  end

  def edit
  end

  def create
    @text = Text.new(text_params)

    if @text.save
      redirect_to admin_text_url(@text), notice: 'Text was successfully created.'
    else
      render :new
    end
  end

  def update
    if @text.update(text_params)
      redirect_to admin_text_url(@text), notice: 'Text was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    if @text.destroy
      redirect_to admin_texts_url, notice: 'Text was successfully destroyed.'
    else
      render :index
    end
  end

  private
    def set_text
      @text = Text.find(params[:id])
    end

    def text_params
      params.fetch(:text, {})
        .permit(:title, :body, :published)
    end

end
