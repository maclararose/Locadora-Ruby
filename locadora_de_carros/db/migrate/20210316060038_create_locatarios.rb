class CreateLocatarios < ActiveRecord::Migration[6.1]
  def change
    create_table :locatarios do |t|
      t.string :nome
      t.string :data_nascimento
      t.string :sexo
      t.string :endereco

      t.timestamps
    end
  end
end
