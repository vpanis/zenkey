class UsersController < ApplicationController

  before_action :set_user, only: [:show, :new, :edit, :update, :locataire, :recherche, :visites]

  def edit
  end

  def edit
  end

  def update
    authorize @user
  end

  def locataire
    authorize @user
    # if @user.save
    #   redirect_to user_recherche_path(@user)
    # else
    #   render :new
    # end
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
