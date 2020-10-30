require 'rails_helper'

RSpec.describe "quiz_trivia/show", type: :view do
  before(:each) do
    @quiz_trivium = assign(:quiz_trivium, QuizTrivium.create!(
      edit: "Edit",
      update: "Update",
      show: "Show"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Edit/)
    expect(rendered).to match(/Update/)
    expect(rendered).to match(/Show/)
  end
end
