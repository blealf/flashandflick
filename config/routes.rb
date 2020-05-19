Rails.application.routes.draw do
  resources :services
  resources :tags
  get 'design/index'
  get 'photography/index'

  get 'photography', to: 'photography#index'
  get 'design', to: 'design#index'
  get 'gallery', to: 'galleries#index'
  get 'about', to: 'contacts#new'

  resources :contacts, only: [:index, :new, :create]
  
  resources :galleries do
    member do
      delete :delete_one_image
    end
  end
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'galleries/front', to: 'galleries#front'
  root 'galleries#front'
end
