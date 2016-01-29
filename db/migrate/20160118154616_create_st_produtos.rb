class CreateStProdutos < ActiveRecord::Migration
  def change
    create_table :st_produtos do |t|
      t.string :nome_produto
      t.decimal :valr_produto
      t.references :st_categoriaproduto, index: true, foreign_key: true
      t.references :st_empresa, index: true, foreign_key: true
      t.integer :user_inclusao, :integer, :references => :User, index: true
      t.integer :user_alteracao, :integer, :references => :User, index: true 
      t.integer :user_exclusao, :integer, :references => :User, index: true 

      t.timestamps null: false
    end
  end
end
