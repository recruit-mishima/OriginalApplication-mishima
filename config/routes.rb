Rails.application.routes.draw do
  resources :searching do
    collection do
      get 'search'
    end
  end
  resources :results, only: :show do
    resources :favourites, only: [:new, :create]
  end
end