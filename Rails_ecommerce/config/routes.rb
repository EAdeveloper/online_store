Rails.application.routes.draw do

	# get "/emails/create"
  	devise_for :users

  	  post "/emails/create", as: :create_email

  	  
  	authenticated :user do
  		root 'welcome#index'
	end

	unauthenticated :user do
		devise_scope :user do
		root "welcome#unregistered", as: :unregistered_root
		end
	end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html		
end
