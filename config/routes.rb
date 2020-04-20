Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :dashboard, only: :index
    end
  end
end
