require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      trivia: nil,
      quiz: nil,
      response: "MyString",
      is_correct?: false
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input[name=?]", "question[trivia_id]"

      assert_select "input[name=?]", "question[quiz_id]"

      assert_select "input[name=?]", "question[response]"

      assert_select "input[name=?]", "question[is_correct?]"
    end
  end
end
