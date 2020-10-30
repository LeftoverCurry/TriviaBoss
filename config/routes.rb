# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'quizzes#index'
  get 'answer', to: 'question#show', as: :answer
  get 'question', to: 'question#edit', as: :ask_question
  put 'respond', to: 'question#update', as: :respond
  resources :quizzes, only: %i[index show create]
  resources :questions, only: %i[edit update show]

  devise_for :users
end
