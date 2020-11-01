require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      trivia: nil,
      quiz: nil,
      response: "Response",
      is_correct?: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Response/)
    expect(rendered).to match(/false/)
  end
end
