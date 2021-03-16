json.extract! emprestimo, :id, :data_check_in, :data_check_out, :limite_km, :wepay_access_token, :wepay_account_id, :created_at, :updated_at
json.url emprestimo_url(emprestimo, format: :json)
