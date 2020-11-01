class AddResponseToQuizTrivium < ActiveRecord::Migration[6.0]
  def change
    add_column :quiz_trivia, :response, :string
    add_column :quiz_trivia, :is_correct?, :boolean
  end
end
