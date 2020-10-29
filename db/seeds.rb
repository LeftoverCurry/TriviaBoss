# frozen_string_literal: true

# Seedfile populates the Database with data provided for the code challenge.

# Parses the provided JSON file
trivia = JSON.parse(File.read('db/seed_data/trivia.json'))

# Iterates over the resulting hash and creates a new Trivium object for each one.
trivia.each do |trivium|
  Trivium.find_or_create_by!(trivium)
end
