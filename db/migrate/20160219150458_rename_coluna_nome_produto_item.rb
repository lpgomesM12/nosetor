class RenameColunaNomeProdutoItem < ActiveRecord::Migration
  def change
  	 rename_column :st_items, :nome_produto, :nome_item
  end
end
