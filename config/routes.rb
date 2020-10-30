# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'quizzes#index'
  get 'question', to: 'questions#edit', as: :question
  get 'answer', to: 'questions#show', as: :answer
  put 'respond', to: 'questions#update', as: :respond
  resources :quizzes, only: %i[index new show create]
  resources :questions, controller: 'quiz_trivia', only: %i[edit update show]

  devise_for :users
end
