# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'quizzes#index'
  get 'answer', to: 'questions#show', as: :answer
  get 'question', to: 'questions#edit', as: :ask_question
  put 'respond', to: 'questions#update', as: :respond
  post 'start_new', to: 'quizzes#create', as: :start_new
  resources :quizzes, only: %i[index show create update]
  resources :questions, only: %i[edit update show]

  devise_for :users
end
