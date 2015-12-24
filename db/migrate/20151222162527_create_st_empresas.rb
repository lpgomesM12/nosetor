class CreateStEmpresas < ActiveRecord::Migration
  def change
    create_table :st_empresas do |t|
      t.string :nome_empresa
      t.string :desc_anuncioempresa
      t.string :tele_telefone1
      t.string :tele_telefone2
      t.text :desc_palavrachave
      t.string :desc_cnpj
      t.references :st_endereco, index: true, foreign_key: true
      t.references :st_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
