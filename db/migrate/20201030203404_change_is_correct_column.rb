class ChangeIsCorrectColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :questions, :is_correct?, :is_correct
  end
end
