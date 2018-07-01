class ExhibitionsController < ApplicationController
  def show
    @exhibition = Exhibition.find(params[:id])
  end
end
