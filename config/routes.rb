RegistryApp::Application.routes.draw do
  resources :types

  root :to => "Pages#home"

  resources :users
  get "/register" => "Users#new", :as => :register

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

  post "/registries" => "Registries#create", :as => :registries
  put "/registries/:registry_id" => "Registries#update", :as => :registry
  delete "/registries/:registry_id" => "Registry#destroy", :as => :registry

  get "/setup/account-information" => "Wizard#account_information", :as => :wizard_account
  get "/setup/lifestyle" => "Wizard#choose_lifestyle", :as => :wizard_lifestyle

end
