Rails.application.routes.draw do

  resources :personas
  resources :anexos
  resources :proveedores
  resources :equipos
  resources :consumos
  resources :facturas
  resources :rol_opcion_operaciones
  resources :opciones
  resources :valor_parametros
  resources :usuarios
  root 'seguridad#login' # Por default ejecuta el controlador seguridad y el metodo login
  resources :parametros
  post '/auth', to:'seguridad#autenticar'
  get '/inicio', to:'inicio#casa'
  get '/logout', to:'seguridad#logout'
  get '/valp/:id', to: "valor_parametros#index"
  get '/consumo_lista/:id', to: "consumos#index"
  get '/anexos_lista', to: "anexos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
