Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "profile" => "pages#profile"
  get "dashboard" => "pages#dashboard"

  resources :flats do
    resources :availabilities, only: [:create]
    get "visits" => "flats#visits"
    get "dossiers" => "flats#dossiers"
  end
  mount Attachinary::Engine => "/attachinary"
end
