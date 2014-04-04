Hiddenhook::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, skip: [:registrations]
  
  root to: "home#index"



end
