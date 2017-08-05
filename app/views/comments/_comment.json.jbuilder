json.extract! comment, :id, :content, :rating, :room_id, :user_idinteger, :created_at, :updated_at
json.url comment_url(comment, format: :json)
