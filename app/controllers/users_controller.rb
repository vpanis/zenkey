class UsersController < ApplicationController

  before_action :set_user, only: [:show, :new, :edit, :update, :locataire, :recherche]

  def edit
  end

  def edit
  end

  def update
    authorize @user
  end

  def locataire
    authorize @user
  end

  def recherche
    @search = Search.new
  end

  private

  def set_user
    @user = User.find(params[:user_id])
    authorize @user
  end
end
