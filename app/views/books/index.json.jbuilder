json.array!(@books) do |book|
  json.extract! book, :id, :title, :summary, :author_id, :published_at, :publication, :price
  json.url book_url(book, format: :json)
end
