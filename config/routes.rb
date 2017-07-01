Rails.application.routes.draw do
  root 'contacts#index'
  resources :contacts, only: [:index] do
    collection do
      get  :confirm
      post :confirm
      patch :complete
    end
  end
end
