Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :kits, only: [:index]
      resources :bags, only: [:index]
    end
  end

  root 'static_pages#index'
end
