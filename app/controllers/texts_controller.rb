class TextsController < ApplicationController
  def show
    @text = Text.published.find(params[:id])
  end
end
