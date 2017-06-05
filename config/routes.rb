Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :users, only: [:show, :edit, :update] do
    get "locataire" => "users#locataire"
    get "recherche" => "users#recherche"
    get "visites" => "users#visites"
  end

  resources :flats do
    get "visits" => "flats#visits"
    get "candidates" => "flats#candidates"
    patch "filter" => "flats#filter"
    resources :slots, only: [:create, :update, :destroy] do
      patch "slot_confirm" => "slots#slot_confirm"
      patch "slot_cancel" => "slots#slot_cancel"
    end
    resources :bookings, only: [] do
      patch "booking_confirm" => "bookings#booking_confirm"
      patch "booking_cancel" => "bookings#booking_cancel"
    end
  end

  get "profile" => "pages#profile"
  get "dashboard" => "pages#dashboard"

  mount Attachinary::Engine => "/attachinary"
end
