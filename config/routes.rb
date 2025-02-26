Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    resources :task_lists, only: [:create, :update, :destroy] do
      resources :tasks, only: [:create, :update, :destroy]
    end
  end

  resources :tasks, only: [] do
    resources :comments, only: [:create, :destroy]
    member do
      patch :move
      patch :assign
    end
  end

  resources :notifications, only: [:index, :update]

  root "projects#index"
end
