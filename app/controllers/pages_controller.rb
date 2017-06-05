class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
     @user_flats = current_user.flats
  end

  def visites
    @user = current_user
    @slots = current_user.slots
  end
end
