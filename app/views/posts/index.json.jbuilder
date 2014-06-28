json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :comentario
  json.url post_url(post, format: :json)
end
