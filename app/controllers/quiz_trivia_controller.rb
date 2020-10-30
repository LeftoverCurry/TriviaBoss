class QuizTriviaController < ApplicationController
  before_action :set_quiz_trivium, only: %i[show edit update]

  # GET /quiz_trivia/1
  # GET /quiz_trivia/1.json
  def show; end

  # GET /quiz_trivia/1/edit
  def edit; end

  # PATCH/PUT /quiz_trivia/1
  # PATCH/PUT /quiz_trivia/1.json
  def update
    if @quiz_trivium.update(quiz_trivium_params)
      redirect_to @quiz_trivium
    else
      render :edit
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quiz_trivium
    @quiz_trivium = QuizTrivium.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def quiz_trivium_params
    params.require(:quiz_trivium).permit(:edit, :update, :show)
  end
end
