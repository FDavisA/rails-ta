Rails.application.routes.draw do
  resources :people do
    resource :detail, only: [:show, :create, :update, :destroy]
  end
end
