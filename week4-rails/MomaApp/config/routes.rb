MomaApp::Application.routes.draw do

  root :to => 'artists#index'
  resources :paintings
  resources :artists

end
