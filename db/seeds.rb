# frozen_string_literal: true

# Seedfile populates the Database with data provided for the code challenge.
FILE = 'db/seed_data/trivia.json'

# Parses the provided JSON file
trivia = JSON.parse(File.read(FILE))

# Iterates over the resulting hash and creates a new Trivium object for each one.
trivia.each do |prompt|
  prompt['prompt'] = prompt.delete 'question'
  Trivium.find_or_create_by!(prompt)
end

puts "*  Seeded #{trivia.count} trivia questions from #{FILE}. Your #{Rails.env} database now
 contains #{Trivium.count} questions in total."

# Seed a user and a quiz for development debugging
if Rails.env == 'development'
  # Seeds a test user
  user = User.new(name: 'test_user', password: 'password', email: 'test_user@example.com')
  user.save!

  # Seeds a quiz
  Quiz.create!(user: user)

  puts "*  Seeded a user (name: 'test_user', password: 'password', email: 'test_user@example.com') and one quiz for that
  user into the development database."
end
