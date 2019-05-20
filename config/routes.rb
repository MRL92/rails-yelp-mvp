Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # verb 'path', to: 'controller#action', as: :route_name
  resources :restaurants, only: [ :index, :create, :new, :show ] do
    resources :reviews, only: [ :new, :create ]
  end
end
