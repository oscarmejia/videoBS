Rails.application.routes.draw do
  resources :clientes
  resources :peliculas
  resources :empleados
  resources :empleadoses
  resources :estados
  resources :generos
  get 'inicio/index'

  root 'inicio#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
