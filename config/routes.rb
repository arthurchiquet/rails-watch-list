Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:create]
    resources :reviews, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
end
