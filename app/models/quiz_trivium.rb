# == Schema Information
#
# Table name: quiz_trivia
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quiz_id    :bigint           not null
#  trivium_id :bigint           not null
#
# Indexes
#
#  index_quiz_trivia_on_quiz_id     (quiz_id)
#  index_quiz_trivia_on_trivium_id  (trivium_id)
#
# Foreign Keys
#
#  fk_rails_...  (quiz_id => quizzes.id)
#  fk_rails_...  (trivium_id => trivia.id)
#
class QuizTrivium < ApplicationRecord
  belongs_to :quiz
  belongs_to :trivium
end
