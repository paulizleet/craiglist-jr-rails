Rails.application.routes.draw do
  get 'gregslist/index'
  resources :localities
  resources :categories
  resources :ads
  root 'gregslist#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
