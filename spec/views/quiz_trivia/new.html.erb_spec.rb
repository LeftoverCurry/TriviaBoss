require 'rails_helper'

RSpec.describe "quiz_trivia/new", type: :view do
  before(:each) do
    assign(:quiz_trivium, QuizTrivium.new(
      edit: "MyString",
      update: "MyString",
      show: "MyString"
    ))
  end

  it "renders new quiz_trivium form" do
    render

    assert_select "form[action=?][method=?]", quiz_trivia_path, "post" do

      assert_select "input[name=?]", "quiz_trivium[edit]"

      assert_select "input[name=?]", "quiz_trivium[update]"

      assert_select "input[name=?]", "quiz_trivium[show]"
    end
  end
end
