Rails.application.routes.draw do
  resources :user_accounts
  resources :cover_sheets
  resources :report_subtotals
  resources :travels
  resources :monetary_contributions
  resources :non_monetary_contributions
  resources :pledges
  resources :loans
  resources :expenditures
  resources :unpaid_incurred_obligations
  resources :investment_purchases
  resources :coh_payments
  resources :credits
  resources :reports
  resources :payment_methods
  resources :transactions
  resources :expend_types
  resources :expenditure_categories
  resources :report_types
  resources :election_types
  resources :address_types
  resources :treasurers
  resources :office_soughts
  resources :office_helds
  resources :filer_types
  resources :filers
  resources :candidates
  resources :entity_types
  resources :prefixes
  resources :states
  resources :entities
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
