# frozen_string_literal: true

Rails.application.routes.draw do
  resources :quizzes, only: %i[index new show create]
  resources :questions, controller: 'quiz_trivia', only: %i[edit update show]

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'quizzes#index'
end
