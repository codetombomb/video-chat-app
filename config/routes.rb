Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"  }
  root to: 'home#index'
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

