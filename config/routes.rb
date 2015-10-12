Rails.application.routes.draw do
  resources :countries
  # You can have the root of your site routed with "root"
  root 'countries#index'

end
