Caffeinate::Webui::Engine.routes.draw do
  root to: 'dashboard#show'

  resources :campaigns, only: [:index, :show]
  resources :subscriptions, only: [:index, :show, :destroy] do
    scope module: :subscriptions do
      resource :unsubscribe, only: [:create]
    end
  end
  resources :mailings, only: [:index, :show, :destroy]
end
