json.extract! review, :id, :score, :oenologist_id, :wine_id, :created_at, :updated_at
json.url review_url(review, format: :json)