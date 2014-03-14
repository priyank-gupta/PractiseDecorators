json.array!(@articles) do |article|
  json.extract! article, :id, :title, :summary, :author_id, :published_at, :publication
  json.url article_url(article, format: :json)
end
