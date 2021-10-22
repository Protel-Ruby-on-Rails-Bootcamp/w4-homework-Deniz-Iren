Rails.application.routes.draw do
  get 'profile/:user_id', to: 'profile#profile', as: 'profile'
  get 'dashboard/index'
  get 'feed/index'
  devise_for :users
  resources :posts do
		resources :comments do
      patch :accept, on: :member
      patch :deny, on: :member
    end
    patch :up_vote, on: :member
    patch :down_vote, on: :member
	end
  resources :relationships, only: [:create, :destroy]

	root 'welcome#index'
end
