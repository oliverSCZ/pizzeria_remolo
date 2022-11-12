Rails.application.routes.draw do
  
  root to: "home#index"
  resources :categories
end
