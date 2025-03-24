Rails.application.routes.draw do
  resources :exercises do
    member do
      get 'confirm_destroy'
    end
  end
end
