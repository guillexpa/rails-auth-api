Rails.application.routes.draw do

  devise_for :users
  namespace :api, defaults:  {format: :json} do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :trips, onyl: [:index]
    end
  end
  
end
