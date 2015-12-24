class CreateStCidades < ActiveRecord::Migration
  def change
    create_table :st_cidades do |t|
      t.string :nome_cidade
      t.references :st_estado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
