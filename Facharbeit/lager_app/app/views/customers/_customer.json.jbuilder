json.extract! customer, :id, :name, :street, :city, :plz, :tel, :email, :dse, :created_at, :updated_at
json.url customer_url(customer, format: :json)
