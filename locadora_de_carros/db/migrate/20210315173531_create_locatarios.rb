class CreateLocatarios < ActiveRecord::Migration[6.1]
  def change
    create_table :locatarios do |t|
      t.string :nome
      t.string :email
      t.string :endereco
      t.datetime :data_nascimento
      t.string :telefone
      t.string :sexo

      t.timestamps
    end
  end
end
