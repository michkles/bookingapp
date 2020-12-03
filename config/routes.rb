Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  namespace :api do
    namespace :v1 do
      get 'bookings/index'
      resources :spaces, :only => [:show]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
