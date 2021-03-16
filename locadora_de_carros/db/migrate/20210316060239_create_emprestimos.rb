class CreateEmprestimos < ActiveRecord::Migration[6.1]
  def change
    create_table :emprestimos do |t|
      t.datetime :data_checkin
      t.datetime :data_checkout
      t.float :limite_km
      t.string :meio_pagamento

      t.timestamps
    end
  end
end
