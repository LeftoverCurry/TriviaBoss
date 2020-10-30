# == Schema Information
#
# Table name: trivia
#
#  id         :bigint           not null, primary key
#  correct    :string
#  incorrect  :string           is an Array
#  prompt     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Trivium < ApplicationRecord
  validates :prompt, presence: true, uniqueness: true
  validates :correct, presence: true
  validates :incorrect, presence: true
  has_many :questions
  has_many :quizzes, through: :questions
end
