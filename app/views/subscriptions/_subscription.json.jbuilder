json.extract! subscription, :id, :name, :approval, :notifications, :status, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
