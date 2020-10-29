require 'rails_helper'

RSpec.describe "quizzes/new", type: :view do
  before(:each) do
    assign(:quiz, Quiz.new(
      score: 1,
      user: nil
    ))
  end

  it "renders new quiz form" do
    render

    assert_select "form[action=?][method=?]", quizzes_path, "post" do

      assert_select "input[name=?]", "quiz[score]"

      assert_select "input[name=?]", "quiz[user_id]"
    end
  end
end
