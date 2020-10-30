class RenameTriviumQuestionToPrompt < ActiveRecord::Migration[6.0]
  def change
    rename_column :trivia, :question, :prompt
  end
end
