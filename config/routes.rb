Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  root :to => 'main#main'

  get  ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'
    
end
