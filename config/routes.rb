# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'quizzes#index'
  get 'answer', to: 'questions#show'
  get 'question', to: 'questions#edit'
  put 'respond', to: 'questions#update', as: :respond

  resources :quizzes, only: %i[index show create update]
  resources :questions, only: %i[edit update show]

  devise_for :users
end
