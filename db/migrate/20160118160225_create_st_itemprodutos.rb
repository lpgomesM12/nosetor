class CreateStItemprodutos < ActiveRecord::Migration
  def change
    create_table :st_itemprodutos do |t|
      t.references :st_item, index: true, foreign_key: true
      t.references :st_produto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
