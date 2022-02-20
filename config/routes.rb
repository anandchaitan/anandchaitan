Rails.application.routes.draw do

  devise_for :employees, :controllers => {:registrations => "employees"}

  root 'welcome#index'
  
  resources :customers do
    collection do
      post :import
    end
  end

  resources :steps
  resources :departments
  resources :roles
  resources :employees
  resources :categories
  resources :products
  resources :orders

end
