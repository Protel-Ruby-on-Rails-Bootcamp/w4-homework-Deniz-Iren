Rails.application.routes.draw do
  get 'profile/:user_id', to: 'profile#profile', as: 'profile'
  get 'dashboard/index'
  devise_for :users
  resources :posts do
		resources :comments do
      patch :accept, on: :member
    end
	end
	root 'welcome#index'
end
