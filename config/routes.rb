Rails.application.routes.draw do
   devise_for :admins, :controllers => {
    :sessions => "admins/sessions",
    :passwords => 'admins/passwords',
    :confirmations => 'admins/confirmations'
  }

  authenticate :admin do
    namespace :admins do
      resources :admins
      resources :profile, :only => [:edit, :update]
      resources :users
      get '/dashboard' => 'dashboards#index', as: :dashboard
      get '/' => 'dashboards#index'
      root 'dashboards#index'
    end
  end


  match 'ping'         => 'tools#ping',           as: :ping, via: :all
  root 'pages#index'
end
