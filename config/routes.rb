Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /en|vi/ do
    root 'pages#index'
  end
  #root 'pages#index'

	#devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end  
end
