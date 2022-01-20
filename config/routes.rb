Rails.application.routes.draw do
  get 'quotes/random' => 'quotes#random'
  resources :quotes
end
