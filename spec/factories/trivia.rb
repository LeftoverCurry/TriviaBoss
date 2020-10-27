# == Schema Information
#
# Table name: trivia
#
#  id         :bigint           not null, primary key
#  correct    :string
#  incorrect  :string           is an Array
#  question   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :trivium do
    question { Faker::Lorem.question }
    incorrect { Faker::Lorem.words(number: 3) }
    correct { Faker::Lorem.word }
  end
end
