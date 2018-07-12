Rails.application.routes.draw do
  resources :trucks do
    resources :menus
  end
  resources :reviews
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
