# frozen_string_literal: true

# Controller class for the Quiz-Trivium join table.
class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: %i[show edit update]

  # GET /answer
  def show
    quiz_questions = Question.where(quiz_id: @question.quiz_id)
    available_questions = quiz_questions.where(response: [nil, ''])
    @previous_question = @question
    @done = available_questions.empty?
    @score = quiz_questions.where(is_correct: true).count
    @quiz = @question.quiz
    return if @done

    @question = available_questions.first
  end

  # GET /question
  def edit; end

  # PATCH/PUT /respond
  def update
    @question.update_attributes(is_correct: @question.trivium.correct ==
                                            (question_params[:response]),
                                response: question_params['response'])
    redirect_to @question
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = Question.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def question_params
    params.require(:question).permit(:trivia_id, :quiz_id, :response, :is_correct)
  end
end
