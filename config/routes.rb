Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :jobseeker_resumes
    end
    resources :coms
    resources :jobseeker_resumes
  end

  namespace :jobseeker do
    resources :jobs do
      member do
        post :submit
      end
    end
  end

  root 'welcome#index'

end
