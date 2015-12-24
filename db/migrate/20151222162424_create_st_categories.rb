class CreateStCategories < ActiveRecord::Migration
  def change
    create_table :st_categories do |t|
      t.string :nome_categoria
      t.integer :father_id, :integer, :references => :fd_categoriaprodutos 
      t.integer :user_inclusao, :integer, :references => :User, index: true
      t.integer :user_exclusao, :integer, :references => :User, index: true  

      t.timestamps null: false
    end
  end
end
