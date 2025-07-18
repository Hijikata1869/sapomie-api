Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api do
    namespace :v1 do
      resources :users, except: :index do
        get 'reviews', on: :member
      end
      resources :players, only: %i[show] do
        resources :reviews, only: %i[index create destroy]
      end
      resources :leagues, only: %i[index] do
        get 'clubs', on: :member
      end
      resources :clubs, only: %i[show]
    end
  end

end
