require 'rails_helper'

RSpec.describe "quizzes/index", type: :view do
  before(:each) do
    assign(:quizzes, [
      Quiz.create!(
        score: 2,
        user: nil
      ),
      Quiz.create!(
        score: 2,
        user: nil
      )
    ])
  end

  it "renders a list of quizzes" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
