Rails.application.routes.draw do
  # get 'phonebooks/show'
  #
  # get 'phonebooks/index'
  #
  # get 'phonebooks/new'
  #
  # get 'phonebooks/update'
  #
  # get 'phonebooks/delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resources :phonebooks

root 'phonebooks#index'


end
