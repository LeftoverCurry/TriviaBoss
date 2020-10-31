# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  is_correct :boolean
#  response   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quiz_id    :bigint           not null
#  trivium_id :bigint           not null
#
# Indexes
#
#  index_questions_on_quiz_id     (quiz_id)
#  index_questions_on_trivium_id  (trivium_id)
#
# Foreign Keys
#
#  fk_rails_...  (quiz_id => quizzes.id)
#  fk_rails_...  (trivium_id => trivia.id)
#
FactoryBot.define do
  factory :question do
    trivia { nil }
    quiz { nil }
    response { "MyString" }
    is_correct? { false }
  end
end
