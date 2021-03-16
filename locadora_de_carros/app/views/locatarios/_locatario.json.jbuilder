json.extract! locatario, :id, :nome, :email, :senha, :data_nascimento, :sexo, :created_at, :updated_at
json.url locatario_url(locatario, format: :json)
