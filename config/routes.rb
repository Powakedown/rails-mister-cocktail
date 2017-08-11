Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
      resources :doses, only: [:new, :create, :destroy], shallow: true
  end

  root 'cocktails#index'
end
