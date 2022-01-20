json.extract! book, :id, :author, :title, :review, :created_at, :updated_at
json.url book_url(book, format: :json)
