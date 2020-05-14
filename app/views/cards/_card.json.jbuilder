json.extract! card, :id, :question, :answer, :endorsed, :user_id, :created_at, :updated_at
json.url card_url(card, format: :json)
