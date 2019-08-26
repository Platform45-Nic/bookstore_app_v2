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
  resources :transactions, only: [:index, :show, :new, :create]
  resources :reviews #do
   # get "/new(:book_id)(:user_id)", action: :new, on: :collection, as: "new_bid_uid"
   #get "/new(:book_id)(:user_id)", to: 'reviews#new', on: :collection, as: "new_bid_uid"
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
