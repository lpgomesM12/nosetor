Rails.application.routes.draw do
  resources :st_itemprodutos
  resources :st_items
  resources :st_produtos
  resources :st_categoriaprodutos
  resources :st_empresas
  resources :st_categories
  devise_for :user
  resources :st_enderecos
  resources :st_bairros
  resources :st_cidades
  resources :st_estados
  get 'site/index'

  
  get '/pesquisa', to: 'site#index', as: 'pesquisa'
  get 'busca' => 'st_bairros#search'
  get 'buscaCategoria' => 'st_categories#pesquisa_categoria'
  match '/listarCidade', to: 'st_cidades#get_cities', via: 'get'
  match '/contact', to: 'site#contact', via: 'get'

  get '/buscaLatLong', to: 'st_bairros#busca_lat_long', as: 'buscaLatLong'

  get '/:id', to: 'site#show_empresa', as: 'loja'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'site#home'


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
