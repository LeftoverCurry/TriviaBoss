require "rails_helper"

RSpec.describe QuizTriviaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/quiz_trivia").to route_to("quiz_trivia#index")
    end

    it "routes to #new" do
      expect(get: "/quiz_trivia/new").to route_to("quiz_trivia#new")
    end

    it "routes to #show" do
      expect(get: "/quiz_trivia/1").to route_to("quiz_trivia#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/quiz_trivia/1/edit").to route_to("quiz_trivia#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/quiz_trivia").to route_to("quiz_trivia#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/quiz_trivia/1").to route_to("quiz_trivia#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/quiz_trivia/1").to route_to("quiz_trivia#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/quiz_trivia/1").to route_to("quiz_trivia#destroy", id: "1")
    end
  end
end
