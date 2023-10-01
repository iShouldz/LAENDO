json.extract! comentario, :id, :autor, :content, :post_id, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
