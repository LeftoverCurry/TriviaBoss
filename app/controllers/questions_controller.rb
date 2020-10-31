class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show edit update]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    quiz_questions = Question.where(quiz_id: @question.quiz_id)
    available_questions = quiz_questions.where(response: [nil, ''])

    @done = available_questions.empty?
    @score = quiz_questions.where(is_correct: true).count
    @quiz = @question.quiz
    return if @done

    @question = available_questions.first
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit; end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    @question.update_attributes(is_correct: @question.trivium.correct == (params[:response]),
                                response: question_params['response'])
    redirect_to @question
    # else
    #   render :edit, message: 'You must enter an answer!'
    # end
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
