json.extract! carro, :id, :marca, :modelo, :cor, :revisoes_em_dia, :diaria, :created_at, :updated_at
json.url carro_url(carro, format: :json)
