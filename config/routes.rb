Rails.application.routes.draw do
  get 'partners/new', to: 'home#new', as: 'new_partner'
  post 'partners', to: 'home#create', as: 'create_partner'
  get 'partners/:id', to: 'home#edit', as: 'edit_partner'
  put 'partners/:id', to: 'home#update', as: 'update_partner'
  delete 'partners/:id', to: 'home#destroy', as: 'destroy_partner'

  get 'settings', to: 'home#setting', as: 'settings'
  get 'settings/new', to: 'home#new_setting', as: 'new_setting'
  post 'settings', to: 'home#create_setting', as: 'create_setting'
  get 'settings/:id', to: 'home#edit_setting', as: 'edit_setting'
  put 'settings/:id', to: 'home#update_setting', as: 'update_setting'
  delete 'settings/:id', to: 'home#destroy_setting', as: 'destroy_setting'

  root 'home#index'

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
