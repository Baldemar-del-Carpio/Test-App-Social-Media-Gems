Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'auth/spotify/callback', to: 'users#spotify'
end
