class AddPartNumberToStItemprodutos < ActiveRecord::Migration
  def change
    add_column :st_itemprodutos, :numr_quatidade, :integer
  end
end
