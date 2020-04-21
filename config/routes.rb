Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: "home#index"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :dashboard, only: :index
    end
  end

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :dashboard, only: :index
      resources :search, only: :index
      resources :categories, only: %i[index show]
      resources :albums, only: :show do
        resources :recently_heards, only: :create
      end
    end
  end
end
