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
require 'rails_helper'

RSpec.describe Trivium, type: :model do
  describe 'validations' do
    subject { create :trivium }
    it { should validate_presence_of(:question) }
    it { should validate_uniqueness_of(:question) }
    it { should validate_presence_of(:correct) }
    it { should validate_presence_of(:incorrect) }
  end

  describe 'associations' do
    it { should have_many(:quizzes) }
  end
end
