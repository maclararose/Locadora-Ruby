class LocatarioIdCarroId < ActiveRecord::Migration[6.1]
  def change
    add_column :emprestimos, :locatario_id, :integer
    add_column :emprestimos, :carro_id, :integer
  end
end
