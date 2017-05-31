Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "profile" => "pages#profile"
  get "dashboard" => "pages#dashboard"

  resources :flats do
    get "visits" => "flats#visits"
    get "dossiers" => "flats#dossiers"
    patch "filter" => "flats#filter"
    resources :slots, only: [:update]
  end
  mount Attachinary::Engine => "/attachinary"
end
