CraigslistSr::Application.routes.draw do
 root :to => 'categories#index'

 resources :posts, only: [:new]

 resources :categories do
   resources :posts, shallow: true, except: [:new]
 end
 
end
