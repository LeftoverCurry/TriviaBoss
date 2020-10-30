require 'rails_helper'

RSpec.describe "quiz_trivia/edit", type: :view do
  before(:each) do
    @quiz_trivium = assign(:quiz_trivium, QuizTrivium.create!(
      edit: "MyString",
      update: "MyString",
      show: "MyString"
    ))
  end

  it "renders the edit quiz_trivium form" do
    render

    assert_select "form[action=?][method=?]", quiz_trivium_path(@quiz_trivium), "post" do

      assert_select "input[name=?]", "quiz_trivium[edit]"

      assert_select "input[name=?]", "quiz_trivium[update]"

      assert_select "input[name=?]", "quiz_trivium[show]"
    end
  end
end
