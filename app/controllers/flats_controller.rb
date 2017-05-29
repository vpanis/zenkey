class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :address)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
