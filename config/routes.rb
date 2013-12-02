Blog::Application.routes.draw do  
  devise_for :users
    resources :posts
    root 'welcome#index'
    resources :posts do
      resources :comments 
    end
  #       get 'recent', on: :collection
  #       get 'short'
  #       get 'sold'
  #       post 'toggle'
  #     # (app/controllers/admin/products_controller.rb)
  #     # Directs /admin/products/* to Admin::ProductsController
  #     collection do
  #     end
  #     end
  #     end
  #     member do
  #     post 'toggle'
  #     resource :seller
  #     resources :comments
  #     resources :comments, :sales
  #     resources :products
  #     resources :sales do
  #   concern :toggleable do
  #   end
  #   end
  #   end
  #   end
  #   end
  #   get 'products/:id' => 'catalog#view'
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  #   namespace :admin do
  #   resources :photos, concerns: :toggleable
  #   resources :posts, concerns: :toggleable
  #   resources :products
  #   resources :products do
  #   resources :products do
  #   resources :products do
  # Example of named route that can be invoked with purchase_url(id: product.id)
  # Example of regular route:
  # Example resource route (maps HTTP verbs to controller actions automatically):
  # Example resource route with concerns:
  # Example resource route with more complex sub-resources:
  # Example resource route with options:
  # Example resource route with sub-resources:
  # Example resource route within a namespace:
  # See how all your routes lay out with "rake routes".
  # The priority is based upon order of creation: first created -> highest priority.
  # You can have the root of your site routed with "root"
end