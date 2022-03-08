json.extract! payment, :id, :Merchant_id, :recieved, :created_at, :updated_at
json.url payment_url(payment, format: :json)
