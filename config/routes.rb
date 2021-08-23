Rails.application.routes.draw do 
  namespace :api do
    namespace :v1 do
      resources :travel_plans, only: [:index, :create]
      resources :destinations, only: [:index]
      end
    end
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

