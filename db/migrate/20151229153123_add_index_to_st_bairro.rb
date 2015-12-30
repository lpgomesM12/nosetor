class AddIndexToStBairro < ActiveRecord::Migration
  def change
    add_index :st_bairros, :nome_bairro
  end
end
