Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users
  resources :posts do
		resources :comments 
	end
	root 'welcome#index'
end
