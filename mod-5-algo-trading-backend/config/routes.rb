Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :algorithms
      resources :orders
      resources :positions
      resources :accounts
      get '/account', to: 'accounts#show_account'

    end
  end
  post '/login', to: 'auth#login'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
