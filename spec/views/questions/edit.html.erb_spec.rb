require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      trivia: nil,
      quiz: nil,
      response: "MyString",
      is_correct?: false
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input[name=?]", "question[trivia_id]"

      assert_select "input[name=?]", "question[quiz_id]"

      assert_select "input[name=?]", "question[response]"

      assert_select "input[name=?]", "question[is_correct?]"
    end
  end
end
