Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :menus
      resources :countries
      resources :companies
      resources :location_groups
      resources :locations
    end
  end
end
