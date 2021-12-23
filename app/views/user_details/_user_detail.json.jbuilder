json.extract! user_detail, :id, :id, :user_id, :user_name, :postal_code, :address, :self_introduction, :created_at, :updated_at
json.url user_detail_url(user_detail, format: :json)
