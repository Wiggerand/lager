json.extract! customer, :id, :dear, :firstname, :lastname, :street, :city, :plz, :tel, :email, :privacypolicy, :created_at, :updated_at
json.url customer_url(customer, format: :json)
