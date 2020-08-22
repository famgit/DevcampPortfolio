Rails.application.routes.draw do
  resources :topics, only: [:index, :show]
  resources :comments
  devise_for :users,path: '', path_names:{sign_in: 'login',sign_out: 'logout', sign_up: 'register'}
  resources :portfolios, except:[:show,:edit]  do
    put :sort, on: :collection
  end
  get 'tech_news', to: 'pages#tech_news'
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolio/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'
  get 'about-me', to: 'pages#about'     # get 'pages/about'
  get 'contact', to: 'pages#contact'# get 'pages/contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
   mount ActionCable.server => '/cable'
  root to: 'pages#home'
end
