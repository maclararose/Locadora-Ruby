class CreateCarros < ActiveRecord::Migration[6.1]
  def change
    create_table :carros do |t|
      t.string :marca
      t.string :modelo
      t.string :cor
      t.boolean :revisoes_em_dia
      t.float :diaria

      t.timestamps
    end
  end
end
