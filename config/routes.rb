Rails.application.routes.draw do
  devise_for :admins, :controllers => { :registrations => "registrations", :sessions => "sessions"}
  resources :admins

  devise_scope :admin do
    get "/acceder" => "devise/sessions#new"
  end

  get 'panel/panel' => 'panel#panel', :as => :panel
  get 'panel/principal' => 'panel#principal', :as => :panel_princ
  get 'panel/index' => 'panel#index', :as => :panel_index
  get 'panel/generar' => 'panel#generar', :as => :panel_nuevo
  get 'panel/editar' => 'panel#editar', :as => :panel_editar
  post 'panel' => 'panel#crear'
  get 'panel/:id' => 'panel#mostrar', :as => :panel_mostrar
  delete 'panel/:id' => 'panel#eliminar', :as => :panel_eliminar
  put 'panel/editar' => 'panel#actualizar'
  patch 'panel/editar' => 'panel#actualizar'
  put 'panel' => 'panel#actualizar'
  patch 'panel' => 'panel#actualizar'

  get '/' => 'inicio#inicio', :as => :inicio
  get '/sobre' => 'inicio#sobre', :as => :sobre
  get '/antecedentes' => 'inicio#antecedentes', :as => :antecedentes
  get '/propuestas' => 'inicio#propuestas', :as => :propuestas
  get '/acciones' => 'inicio#acciones', :as => :acciones
  get '/flujos' => 'inicio#flujos', :as => :flujos
  get '/principios' => 'inicio#principios', :as => :principios
  get '/documentos' => 'inicio#documentos', :as => :documentos
  get '/libros' => 'inicio#libros', :as => :libros
  get '/articulos' => 'inicio#articulos', :as => :articulos
  get '/revistas' => 'inicio#revistas', :as => :revistas
  get '/tesis' => 'inicio#tesis', :as => :tesis
  get '/boletines' => 'inicio#boletines', :as => :boletines
  get '/comunicados' => 'inicio#comunicados', :as => :comunicados
  get '/cuadernos' => 'inicio#cuadernos', :as => :cuadernos
  get '/capsulas' => 'inicio#capsulas', :as => :capsulas
  get '/documentales' => 'inicio#documentales', :as => :documentales
  get '/programas' => 'inicio#programas', :as => :programas
  get '/conferencias' => 'inicio#conferencias', :as => :conferencias
  get '/enlaces' => 'inicio#enlaces', :as => :enlaces
  get '/miembros' => 'inicio#miembros', :as => :miembros
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root to: 'inicio#inicio'
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
