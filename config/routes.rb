Rails.application.routes.draw do
  resources :portfolios

 get 'about-us', to: 'pages#about'     # get 'pages/about'
  get 'contact-us', to: 'pages#contact'# get 'pages/contact'

  resources :blogs
  root to: 'pages#home'
end
