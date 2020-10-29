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
require 'rails_helper'

RSpec.describe Quiz, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:trivia) }
  end

  describe 'callbacks' do
    before :all do
      create_list :trivium, 11
    end

    subject { create :quiz }
    it 'should create ten questions when created' do
      expect(subject.trivia.count).to eq(10)
    end

    it 'should have unique questions' do
      expect(subject.trivia.ids.uniq.count).to eq(10)
    end
  end
end
