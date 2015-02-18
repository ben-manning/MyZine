Rails.application.routes.draw do
  resources :articles, only: :index

  devise_for :users
  get 'welcome/index'

  root 'welcome#index'

  resources :users, only: :show do
    resources :favorites, only: [:index, :new, :create, :destroy]
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end
end
