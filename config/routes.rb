Rails.application.routes.draw do
  devise_for :authors
  get 'home/index'
  root "home#index"
 
  scope module: 'authors' do
    resources :posts do
      resources :elements
    end
  end
end
