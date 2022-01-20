Rails.application.routes.draw do
  resources :quotes
  get 'quotes/random' => 'quotes#random'
end
