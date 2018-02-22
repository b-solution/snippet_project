json.extract! snippet, :id, :url, :content, :is_private, :created_at, :updated_at
json.url snippet_url(snippet, format: :json)
