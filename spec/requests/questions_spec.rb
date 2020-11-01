# frozen_string_literal: true

require 'rails_helper'

# request testing for questions controller
RSpec.describe '/questions', type: :request do
  login_user
  let(:quiz) { create :quiz }
  let(:question) { quiz.questions.first }

  describe 'GET /show' do
    it 'renders a successful response' do
      get question_url(id: question.id)
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      get edit_question_url(question)
      expect(response).to be_successful
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      it 'updates the requested question' do
        put question_url(id: question.id, question: { response: 'qwerty', is_correct: false })
        question.reload
        expect(question.response).to eq('qwerty')
      end

      it 'redirects to the next question' do
        put question_url(id: question.id, question: { response: 'qwerty', is_correct: false })
        question.reload
        expect(response).to redirect_to(question_url(question))
      end
    end
  end
end
