Rails.application.routes.draw do
   resources :searching, only :show do 
    collection do 
      get 'search'
      resources :results, only show do
        resources :comments, only[:new, :create]
        end
      end
    end
    end
end
