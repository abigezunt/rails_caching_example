FullCachingExample::Application.routes.draw do
  root 'home#show'

  resources :products do
  	resources :reviews
  end

end
