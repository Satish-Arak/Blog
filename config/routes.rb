Rails.application.routes.draw do
  devise_for :users
  root'welcome#index'
  get 'users/index'
  resources :articles do
    resources :comments
  end
end 

