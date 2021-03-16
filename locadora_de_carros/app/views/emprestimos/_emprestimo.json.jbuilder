json.extract! emprestimo, :id, :data_checkin, :data_checkout, :limite_km, :meio_pagamento, :created_at, :updated_at
json.url emprestimo_url(emprestimo, format: :json)
