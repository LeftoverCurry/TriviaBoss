class QuizzesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quiz, only: %i[show update]

  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.where(user_id: current_user.id)
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show; end

  # POST /quizzes
  # POST /quizzes.json
  def create
    @quiz = Quiz.create!(user_id: current_user.id)
    id = @quiz.questions.first.id
    redirect_to ask_question_path(id: id)
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    @quiz.update(quiz_params)
    redirect_to @quiz
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def quiz_params
    params.require(:quiz).permit(:id, :score)
  end
end
