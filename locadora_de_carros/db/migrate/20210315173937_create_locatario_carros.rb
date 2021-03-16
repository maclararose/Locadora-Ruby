class CreateLocatarioCarros < ActiveRecord::Migration[6.1]
  def change
    create_table :locatario_carros do |t|
      t.integer :locatario_id
      t.integer :carro_id
      t.boolean :pagamento

      t.timestamps
    end
  end
end
