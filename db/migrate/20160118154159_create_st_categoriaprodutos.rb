class CreateStCategoriaprodutos < ActiveRecord::Migration
  def change
    create_table :st_categoriaprodutos do |t|
      t.string :nome_categoria
      t.references :st_category, index: true, foreign_key: true
      t.integer :user_inclusao, :integer, :references => :User, index: true
      t.integer :user_exclusao, :integer, :references => :User, index: true  

      t.timestamps null: false
    end
  end
end
