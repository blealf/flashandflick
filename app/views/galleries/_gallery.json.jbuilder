json.extract! gallery, :id, :name, :image_type, :tag, :usage, :caption, :sub_caption, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)
