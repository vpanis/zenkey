Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "profile" => "pages#profile"
  get "dashboard" => "pages#dashboard"

  resources :flats do
    resources :slots, only: [:create, :update, :destroy]
    get "visits" => "flats#visits"
    get "dossiers" => "flats#dossiers"
    patch "filter" => "flats#filter"
    get "reservations" => "flats#reservations"
  end
  mount Attachinary::Engine => "/attachinary"
end
