Rails.application.routes.draw do

  namespace :api, defaults:  {format: :json} do
    namespace :v1 do
      resources :trips, onyl: [:index]
    end
  end
  
end
