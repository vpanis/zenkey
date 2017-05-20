Rails.application.routes.draw do
  root 'home#index'
  get '/locataires' => 'home#locataires'
end
