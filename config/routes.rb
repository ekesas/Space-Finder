Rails.application.routes.draw do

  devise_for :users

  resources :reviews


  

  root 'spaces#home' 

  get '/spaces' =>'spaces#index'

  get '/spaces/new' => 'spaces#new'

  post '/spaces/' =>'spaces#create'

  get '/how-it-works' => 'spaces#how'

  get '/spaces/:user_id/contact' => 'spaces#contact'

  get '/spaces/about' => 'spaces#about'

  get '/spaces/:id' =>'spaces#show', as: :space

  get '/spaces/:id/edit' => 'spaces#edit'

  patch '/spaces/:id' => 'spaces#update'

  delete '/spaces/:id' => 'spaces#destroy'

  
    

   

  get '/neighborhoods' =>'neighborhoods#index'

  get '/neighborhoods/new' => 'neighborhoods#new'

  post '/neighborhoods' =>'neighborhoods#create'

  get'/neighborhoods/:id' =>'neighborhoods#show', as: :neighborhood

  get '/neighborhoods/:id/edit' => 'neighborhoods#edit'

  patch '/neighborhoods/:id' => 'neighborhoods#update'

  delete '/neighborhoods/:id' => 'neighborhoods#destroy'

  post '/contact' => 'contacts#contact'


 

  

  






  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
