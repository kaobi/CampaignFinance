json.extract! user_account, :id, :password, :email, :date_created, :created_at, :updated_at
json.url user_account_url(user_account, format: :json)