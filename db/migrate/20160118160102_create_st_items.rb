class CreateStItems < ActiveRecord::Migration
  def change
    create_table :st_items do |t|
      t.string :nome_produto
      t.references :st_categoriaproduto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
