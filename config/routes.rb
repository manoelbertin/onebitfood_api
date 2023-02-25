Rails.application.routes.draw do
  scope '/api', defaults: { format: :json } do 
    resources :categories, only: [:index]
    resources :restaurants, only: [:index, :show]
    resources :orders, only: [:create, :show, :index]
    resources :available_cities, only: [:index]
    resources :products, only: [:create, :show, :index]
  end
end
