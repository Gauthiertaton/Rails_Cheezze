Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resource :profile, only: [:show]
  resources :raclette_machines, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:index]

  namespace :owner do
    resources :raclette_machines, only: [:index] # => /owner/raclette_machines
    resources :reservations, only: [:index] do
      member do
        patch :accept # => /owner/reservations/:id/accept
        patch :decline
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
