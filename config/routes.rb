RegistryApp::Application.routes.draw do
  resources :types

  root :to => "Pages#home"

  resources :users

  get "/products/new" => "Products#new", :as => :new_product
  post "/products" => "Products#create", :as => :products
  get "/products" => "Products#index", :as => :products
  get "/products/:product_id" => "Products#show", :as => :product
  get "/products/:product_id/edit" => "Products#edit", :as => :edit_product
  put "/products/:product_id" => "Products#update", :as => :product
  delete "/products/:product_id" => "Products#destroy", :as => :product


  get "/sign-in" => "Sessions#new", :as => :sign_in
  post "/sessions" => "Sessions#create", :as => :sessions
  delete "/sign-out" => "Sessions#destroy", :as => :sign_out

  get "/admins/sign-in" => "AdminSessions#new", :as => :admin_sign_in
  post "/admins/sign-in" => "AdminSessions#create", :as => :admin_sessions
  delete "/admins/sign-out" => "AdminSessions#destroy", :as => :admin_sign_out

  resources :admins
end
