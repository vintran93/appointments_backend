Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :doctors
      resources :users, only: [:create] do 
        resources :appointments
      end
    end
  end
  
  post 'login', to: 'authentication#login'
  get 'auto_login', to: 'authentication#auto_login'
  get 'user_is_authed', to: 'authentication#user_is_authed'

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end