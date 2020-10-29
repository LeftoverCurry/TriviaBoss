# == Schema Information
#
# Table name: quiz_trivia
#
#  id          :bigint           not null, primary key
#  is_correct? :boolean
#  response    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  quiz_id     :bigint           not null
#  trivium_id  :bigint           not null
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
require 'rails_helper'

RSpec.describe QuizTrivium, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
