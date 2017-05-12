Rails.application.routes.draw do


  	resources :students, param: :id
	resources :companies
	resources :jobs

	get 'company/new', to: 'companies#new'
		post 'companies/new', to: 'companies#create'
	
	post 'students/new', to: 'students#create'

	get 'jobs/new'
	post 'jobs/new', to: 'jobs#create'
	get '/create_landing', to: 'jobs#create_landing'

  get 'login/index'
  delete 'login/logout', to: 'sessions#destroy'

  get 'admin_logins/new',to: 'admin_logins#new'
  post 'admin_logins/new', to: 'admin_logins#create'

  root 'login#index'
end
