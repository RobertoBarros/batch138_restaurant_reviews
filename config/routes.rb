Rails.application.routes.draw do

  namespace :admin do
    get 'restaurants/index'
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end



  resources :restaurants do
    resources :reviews, only: [:new, :create]





    collection do                       # collection => no restaurant id in URL
      get 'top', to: "restaurants#top"  # RestaurantsController#top
    end


   member do                             # member => restaurant id in URL
      get 'chef', to: "restaurants#chef"  # RestaurantsController#chef
    end



  end




end
