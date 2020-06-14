json.extract! curated_link, :id, :url, :cat_id, :last_verified, :approved, :importance, :relevance, :metadata, :created_at, :updated_at
json.url curated_link_url(curated_link, format: :json)
