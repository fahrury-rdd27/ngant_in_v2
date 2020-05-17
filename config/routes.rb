Rails.application.routes.draw do
  
  devise_for :mahasiswas, path: 'mahasiswas',controllers: { sessions: 'mahasiswas/sessions', registrations: 'mahasiswas/registrations'}

  resources :menus
  get '/menu_saya', to: 'menus#menu_saya'

  devise_for :warungs, path: 'warungs', controllers: { sessions: 'warungs/sessions', registrations: 'warungs/registrations'}
  resources :warungs, only: [:index, :show] do
    resources :menus, only:[:index, :show]
  end
  get '/warungs', to: 'warungs#index'

  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
