# frozen_string_literal: true

# Populates DB from the JSON file passed to it.
class TriviaSeed
  def initialize(file:)
    @file = file
    create_seed
  end

  private

  def parse_data_file
    JSON.parse(File.read(@file))
  end

  def create_seed
    trivia = parse_data_file
    trivia.each do |trivium|
      Trivium.find_or_create_by!(trivium)
    end
  end
end
