class CreateTrivia < ActiveRecord::Migration[6.0]
  def change
    create_table :trivia do |t|
      t.string :question
      t.string :incorrect, array: true
      t.string :correct

      t.timestamps
    end
  end
end
