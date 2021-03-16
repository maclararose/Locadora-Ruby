class CreateRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :adress
      t.integer :cpf
      t.string :sex
      t.datetime :born
      t.string :tellphone

      t.timestamps
    end
  end
end
