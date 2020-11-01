require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        trivia: nil,
        quiz: nil,
        response: "Response",
        is_correct?: false
      ),
      Question.create!(
        trivia: nil,
        quiz: nil,
        response: "Response",
        is_correct?: false
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Response".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
