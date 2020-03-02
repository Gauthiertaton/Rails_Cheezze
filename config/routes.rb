Rails.application.routes.draw do
  root to: 'pages#home'
  resources :profiles, only: [:show]
  resources :raclettemachines, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:index]

  namespace :owner do
    resources :raclettemachines, only: [:index] # => /owner/raclette_machines
    resources :reservations, only: [:index] do
      member do
        patch :accept # => /owner/reservations/:id/accept
        patch :decline
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
