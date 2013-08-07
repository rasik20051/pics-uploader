json.array!(@comments) do |comment|
  json.extract! comment, :user_name, :body, :pic_d
  json.url comment_url(comment, format: :json)
end
