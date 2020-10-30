class Question < ApplicationRecord
  belongs_to :trivia
  belongs_to :quiz
end
