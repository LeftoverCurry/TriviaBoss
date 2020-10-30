class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.belongs_to :trivium, null: false, foreign_key: true
      t.belongs_to :quiz, null: false, foreign_key: true
      t.string :response
      t.boolean :is_correct?

      t.timestamps
    end
  end
end
