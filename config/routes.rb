Rails.application.routes.draw do
  devise_for :admins
  match 'ping'         => 'tools#ping',           as: :ping, via: :all
  root 'pages#index'
end
