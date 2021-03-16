class CreateEmprestimos < ActiveRecord::Migration[6.1]
  def change
    create_table :emprestimos do |t|
      t.datetime :data_check_in
      t.datetime :data_check_out
      t.float :limite_km
      t.string :wepay_access_token
      t.integer :wepay_account_id

      t.timestamps
    end
  end
end
