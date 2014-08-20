json.array!(@reviews) do |review|
  json.extract! review, :id, :author, :content, :rating, :space_id
  json.url review_url(review, format: :json)
end
