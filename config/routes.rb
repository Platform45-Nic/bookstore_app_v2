Rails.application.routes.draw do
  root to: 'static_pages#index'
  get  'show', to: 'static_pages#show', as: 'profile'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
