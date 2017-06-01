Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "profile" => "pages#profile"
  get "dashboard" => "pages#dashboard"

  resources :flats do
    resources :slots, only: [:create, :update, :destroy] do
      patch "slot_confirm" => "slots#slot_confirm"
      patch "slot_cancel" => "slots#slot_cancel"
    end
    get "visits" => "flats#visits"
    get "dossiers" => "flats#dossiers"
    patch "filter" => "flats#filter"
    get "reservations" => "flats#reservations"
    resources :bookings, only: [] do
      patch "booking_confirm" => "bookings#booking_confirm"
      patch "booking_cancel" => "bookings#booking_cancel"
    end
  end
  mount Attachinary::Engine => "/attachinary"
end
