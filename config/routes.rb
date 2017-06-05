Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :users, only: [:show, :edit, :update] do
    get "locataire" => "users#locataire"
    get "recherche" => "users#recherche"
    get "visites" => "users#visites"
  end

  resources :flats do
    resources :slots, only: [:create, :update, :destroy] do
      patch "slot_confirm" => "slots#slot_confirm"
      patch "slot_cancel" => "slots#slot_cancel"
    end

    resources :bookings, only: [] do
      patch "booking_confirm" => "bookings#booking_confirm"
      patch "booking_cancel" => "bookings#booking_cancel"
      resources :documents, only: [:show, :create, :update, :index]
    end

    get "visits" => "flats#visits"
    get "dossiers" => "flats#dossiers"
    get "etat_des_lieux" => "flats#etat_des_lieux"
    get "reservations" => "flats#reservations"
    patch "filter" => "flats#filter"
  end

  get "profile" => "pages#profile"
  get "dashboard" => "pages#dashboard"

  mount Attachinary::Engine => "/attachinary"
end
