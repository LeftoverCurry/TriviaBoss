# frozen_string_literal: true

Rails.application.routes.draw do
  resources :questions
  root to: 'quizzes#index'
  get 'question', to: 'quiz_trivia#edit', as: :question
  get 'answer', to: 'quiz_trivia#show', as: :answer
  put 'respond', to: 'quiz_trivia#update', as: :respond
  resources :quizzes, only: %i[index show create]

  devise_for :users
end
