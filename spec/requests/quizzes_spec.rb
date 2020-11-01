require 'rails_helper'

# Request tests for Quiz controller
RSpec.describe '/quizzes', type: :request do
  login_user
  let(:quiz) { create :quiz }
  let(:quiz_attrs) { build :quiz }

  describe 'GET /index' do
    it 'renders a successful response' do
      get quizzes_url
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    subject { post(quizzes_url, params: { quiz: quiz_attrs }) }
    it 'creates a new Quiz' do
      expect { subject }.to change(Quiz, :count).by(1)
    end

    it 'redirects to the question' do
      subject
      question = Question.find_by(quiz_id: Quiz.last.id)
      expect(response).to redirect_to(edit_question_path(id: question.id))
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      quiz
      get quiz_url(quiz)
      expect(response).to be_successful
    end
  end

  describe 'PATCH /update' do
    context 'with valid atrributes' do
      before(:each) do
        quiz
        attrs = { score: 22 }
        put quiz_url(id: quiz.id, quiz: attrs)
      end

      it 'updates the requested quiz' do
        quiz.reload
        expect(quiz.score).to eq(22)
      end

      it 'redirects to the question' do
        subject
        quiz.reload
        expect(response).to redirect_to(quiz_url(quiz))
      end
    end
  end
end
