Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'libraries#welcome'

  #get

  resources :libraries do
    resources :employees
    resources :subscribers
    resources :books do
       resources :issuings
    end
  end

end
