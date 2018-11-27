Rails.application.routes.draw do

  namespace :admin do
    resources :schemes do
      resources :scheme_tiles
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :houses, only: [:index, :show]
end
