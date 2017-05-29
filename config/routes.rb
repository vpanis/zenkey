Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard" => "pages#dashboard"

  resources :flats do
    get "visits" => "flats#visits"
    get "dossiers" => "flats#dossiers"
  end
  mount Attachinary::Engine => "/attachinary"
end
