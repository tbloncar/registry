RegistryApp::Application.routes.draw do
  root_to => "Pages#home"

  resources :users

  get "sign-in" => "Sessions#new", :as => :sign_in
  post "sessions" => "Sessions#create", :as => :sessions
  delete "sign-out" => "Sessions#destroy", :as => :sign_out
end
