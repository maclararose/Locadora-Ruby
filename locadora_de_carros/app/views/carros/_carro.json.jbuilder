json.extract! carro, :id, :ano, :marca, :cor, :modelo, :km, :revisao, :created_at, :updated_at
json.url carro_url(carro, format: :json)
