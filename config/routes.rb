Rails.application.routes.draw do

  root to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get 'about/florian', to: 'static_pages#florian'
  get 'about/steven', to: 'static_pages#steven'
  get 'about/luxin', to: 'static_pages#luxin'
  get '/new', to: 'users#new'
  post '/new', to: 'users#new_post'
  get '/error', to: 'users#error', as: 'error'
  get '/error2', to: 'users#error2', as: 'error2'
  get '/users/:username', to: 'users#show', as: 'show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
