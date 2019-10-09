Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # get 'homepage/index'

  root to: 'homepage#index'

  namespace :api do 
    namespace :v1 do 
     resources :consultants, only: [:index, :create, :destroy, :update]
    end 
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
