RoutingDrill::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  root :to => 'home#start'
  get '/start' => 'home#start'
  get '/a' => 'home#a'
  get '/b' => 'home#b'
  get '/1' => 'home#one'
  get '/2' => 'home#two'
  get '/door' => 'home#door'
end
