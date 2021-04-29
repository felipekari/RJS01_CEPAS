Rails.application.routes.draw do
  resources :oenologists
  resources :magazines
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  resources :wines
  resources :varieties
  resources :wine_varieties

  root "wines#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
