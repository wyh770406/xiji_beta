ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session
  map.resources :admin
  map.resources :products, :member => { :show_cat => :get }, :collection => { :search => :get}
  map.resources :product_details
  map.resources :special_consults, :collection => { :answer_list => :get}
  map.resources :company_infos
  map.resources :recent_newes
  map.resources :xiji_newes
  map.resources :basic_knowledges
  map.resources :frequent_asks
  map.resources :sleep_rents
  map.resources :business_cooperates
  map.resources :contacts
  map.resources :talents
  map.resources :videopdf_downloads, :collection => { :pdf_list => :get}
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "home"
  map.namespace :adminpanel do |admin|
    admin.resources :top_products, :active_scaffold => true
    admin.resources :product_details, :active_scaffold => true


    admin.resources :basic_knowledges, :active_scaffold => true
    admin.resources :company_infos
    admin.resources :recent_newes
    admin.resources :xiji_newes
    admin.resources :frequent_asks, :active_scaffold => true
    admin.resources :sleep_rents
    admin.resources :business_cooperates
    admin.resources :contacts
    admin.resources :talents
    admin.resources :question_types, :active_scaffold => true
    admin.resources :special_consults, :active_scaffold => true
    admin.resources :videopdf_downloads, :active_scaffold => true
 #   admin.resources :handlers, :active_scaffold => true
  end
  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
