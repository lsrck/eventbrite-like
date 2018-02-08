Rails.application.routes.draw do

  get 'events/index'

  get 'events/new'

  get 'events/create'

  get 'events/show'

	root "users#index"
	resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
