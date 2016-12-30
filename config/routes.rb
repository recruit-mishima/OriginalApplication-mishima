Rails.application.routes.draw do
   resources :searching, only :show do 
    collection do 
      get 'search'
    end
    rood 'articles#search'
end
