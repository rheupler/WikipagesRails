Rails.application.routes.draw do
  resources :countries do
    resources :cities
  end
  # You can have the root of your site routed with "root"
  root 'countries#index'

end
