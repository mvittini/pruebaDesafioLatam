json.array!(@accounts) do |account|
  json.extract! account, :id, :typeaccount, :description, :balance, :finalbalance
  json.url account_url(account, format: :json)
end
