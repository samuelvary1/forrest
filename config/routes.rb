Rails.application.routes.draw do
  resources :matches, except: [:new, :edit]
  resources :tournaments, except: [:new, :edit]
  resources :users, except: [:new, :edit]

end
