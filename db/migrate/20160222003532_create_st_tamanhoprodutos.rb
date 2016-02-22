class CreateStTamanhoprodutos < ActiveRecord::Migration
  def change
    create_table :st_tamanhoprodutos do |t|
      t.string :desc_tamanho
      t.decimal :valr_produto
      t.references :st_produto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
