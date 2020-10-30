class QuizTriviaController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: %i[show edit update]

  # GET /answer
  # Determines if the question was answered correctly and displays
  def show; end

  # GET /question
  # Displays form for answering a single question
  def edit; end

  # PATCH/PUT /response
  # Updates the question table with the response given by the user
  def update
    if params[:response].present?
      @question.update(quiz_trivium_params)
      redirect_to answer_path(:id)
    else
      render :edit, message: 'You must enter an answer!'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = QuizTrivium.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def quiz_trivium_params
    params.require(:quiz_trivium).permit(:trivium_id, :response)
  end
end
