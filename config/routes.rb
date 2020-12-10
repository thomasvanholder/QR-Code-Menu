Rails.application.routes.draw do
  get 'categories/new'
  get 'categories/edit'
  resources :menus do
    resources :categories, shallow: true
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
