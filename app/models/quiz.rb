# == Schema Information
#
# Table name: quizzes
#
#  id         :bigint           not null, primary key
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_quizzes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :trivia, through: :questions

  after_create :generate_questions

  private

  def generate_questions
    all_ids = Trivium.ids
    random_ids = []

    10.times { random_ids << all_ids.delete(all_ids.sample) }
    trivia << Trivium.where(id: random_ids)
  end
end
