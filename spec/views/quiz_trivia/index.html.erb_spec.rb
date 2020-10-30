require 'rails_helper'

RSpec.describe "quiz_trivia/index", type: :view do
  before(:each) do
    assign(:quiz_trivia, [
      QuizTrivium.create!(
        edit: "Edit",
        update: "Update",
        show: "Show"
      ),
      QuizTrivium.create!(
        edit: "Edit",
        update: "Update",
        show: "Show"
      )
    ])
  end

  it "renders a list of quiz_trivia" do
    render
    assert_select "tr>td", text: "Edit".to_s, count: 2
    assert_select "tr>td", text: "Update".to_s, count: 2
    assert_select "tr>td", text: "Show".to_s, count: 2
  end
end
