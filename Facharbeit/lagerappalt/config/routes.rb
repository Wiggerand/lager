Rails.application.routes.draw do
  
  resources :session
  

  get 'signup' => 'users#new'
  resources :users
  root 'customers#index'

    resources :customers do
    	resources :cars do
        resources :tires
      end
    end
	


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
