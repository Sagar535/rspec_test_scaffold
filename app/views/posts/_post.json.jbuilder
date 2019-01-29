json.extract! post, :id, :content, :user, :title, :created_at, :updated_at
json.url post_url(post, format: :json)
