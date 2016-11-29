json.extract! user, :id, :name, :bond_number, :bond_type, :technical_user, :password, :email, :created_at, :updated_at
json.url user_url(user, format: :json)