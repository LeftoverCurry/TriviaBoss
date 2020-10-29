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
class Trivium < ApplicationRecord
  validates :question, presence: true, uniqueness: true
  validates :correct, presence: true
  validates :incorrect, presence: true
  has_many :quiz_trivium
  has_many :quizzes, through: :quiz_trivium
end
