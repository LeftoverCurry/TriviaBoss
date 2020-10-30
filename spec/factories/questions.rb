FactoryBot.define do
  factory :question do
    trivia { nil }
    quiz { nil }
    response { "MyString" }
    is_correct? { false }
  end
end
