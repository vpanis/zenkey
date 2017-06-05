class SearchesController < ApplicationController
  before_action :set_search, only: [:edit, :update]

  def new
    @search = Search.new
    authorize @search
  end

  def create
    @search = Search.new(search_params)
    @search.tenant = current_user

    authorize @search
    if @search.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def edit
    # Geolocation data for Google Maps
    @hash = Gmaps4rails.build_markers(@search) do |search, marker|
      marker.lat search.latitude
      marker.lng search.longitude
    end

    authorize @search
  end

  def update
    @search.update(search_params)

    authorize @search
    redirect_to flats_path
  end


  private

  def search_params
    params.require(:search).permit(:address, :size_min, :rent_max)
  end

  def set_search
    @search = Search.find(params[:id])
  end
end
