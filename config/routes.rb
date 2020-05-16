Rails.application.routes.draw do
  resources :menus
  get '/menu_saya', to: 'menus#menu_saya'

  devise_for :warungs

  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
