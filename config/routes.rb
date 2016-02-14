Rails.application.routes.draw do
  resources :tournaments, except: [:new, :edit]
  resources :users, except: [:new, :edit]

end
