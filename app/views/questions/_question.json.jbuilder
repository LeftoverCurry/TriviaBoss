json.extract! question, :id, :trivia_id, :quiz_id, :response, :is_correct?, :created_at, :updated_at
json.url question_url(question, format: :json)
