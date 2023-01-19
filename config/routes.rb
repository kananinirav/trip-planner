Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'trips#index'
  resources :trips do
    collection do
      post :add_route_field
      delete :remove_route_field
      post :add_expense_field
      delete :remove_expense_field
    end
  end
end
