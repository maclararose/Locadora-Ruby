class CreateCarros < ActiveRecord::Migration[6.1]
  def change
    create_table :carros do |t|
      t.datetime :ano
      t.string :marca
      t.string :cor
      t.string :modelo
      t.float :km
      t.boolean :revisao
      t.float :diaria

      t.timestamps
    end
  end
end
