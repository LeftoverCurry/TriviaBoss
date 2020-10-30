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
FactoryBot.define do
  factory :quiz do
    score { rand(1..10) }
    user { build :user }
  end
end
