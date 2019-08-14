Rails.application.routes.draw do
  root to: 'static_pages#index'
  get  'show', to: 'static_pages#show', as: 'profile'

  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  resources :genres
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
