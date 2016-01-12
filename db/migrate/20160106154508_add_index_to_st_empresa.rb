class AddIndexToStEmpresa < ActiveRecord::Migration
  def change
    add_index :st_empresas, :desc_palavrachave
  end
end
