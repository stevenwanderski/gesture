Gesture::Application.routes.draw do
  get "pages/index"
  get "poses", to: "pages#poses"

  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "pages#index"
end
