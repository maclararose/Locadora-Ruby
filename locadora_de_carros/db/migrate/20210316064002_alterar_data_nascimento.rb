class AlterarDataNascimento < ActiveRecord::Migration[6.1]
  def change
    remove_column :locatarios, :data_nascimento
    add_column :locatarios, :data_nascimento, :date
  end
end
