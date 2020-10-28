require 'rails_helper'

RSpec.describe "quizzes/edit", type: :view do
  before(:each) do
    @quiz = assign(:quiz, Quiz.create!(
      score: 1,
      user: nil
    ))
  end

  it "renders the edit quiz form" do
    render

    assert_select "form[action=?][method=?]", quiz_path(@quiz), "post" do

      assert_select "input[name=?]", "quiz[score]"

      assert_select "input[name=?]", "quiz[user_id]"
    end
  end
end
