Rails.application.routes.draw do
  get "/sessions", to: "sessions#index"
  get "/sessions/new", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/", to: "application#index"
  resources :adoptions, only: [:index, :new, :create]
  resources :dogs, only: [:index, :new, :show, :create, :edit, :update]
  resources :users, only: [:index, :new, :show, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
