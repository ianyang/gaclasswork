Stocks::Application.routes.draw do

  root :to => 'home#start'
  get '/start' => 'home#start'
  get '/search' => 'home#search'
  get '/:stock' => 'home#search'
  get '/error' => 'home#error'
end