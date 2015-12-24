class CreateStEnderecos < ActiveRecord::Migration
  def change
    create_table :st_enderecos do |t|
      t.string :nome_rua
      t.string :desc_quadra
      t.string :desc_lote
      t.string :desc_numero
      t.string :desc_complemento
      t.string :desc_cep
      t.string :latitude
      t.string :longitude
      t.references :st_bairro, index: true, foreign_key: true
      t.references :st_cidade, index: true, foreign_key: true
      t.integer :user_inclusao, :integer, :references => :User, index: true
      t.integer :user_exclusao, :integer, :references => :User, index: true  

      t.timestamps null: false
    end
  end
end
