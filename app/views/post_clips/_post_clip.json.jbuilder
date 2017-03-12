json.extract! post_clip, :id, :name, :description, :content, :created_at, :updated_at
json.url post_clip_url(post_clip, format: :json)
