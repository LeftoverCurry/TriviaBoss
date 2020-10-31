# frozen_string_literal: true

# Provides helper methods for Question views
module QuestionsHelper
  def answers(question)
    trivium = question.trivium
    list = []
    trivium.incorrect.each { |t| list << t }
    list << trivium.correct
    list.shuffle!
  end
end
