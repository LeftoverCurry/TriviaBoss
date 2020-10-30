# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'quizzes#index'
  get 'answer', to: 'question#show', as: :answer
  put 'respond', to: 'question#update', as: :respond
  resources :quizzes, only: %i[index show create]
  resources :questions, only: %i[edit update show]

  devise_for :users
end
