class AddPagenameToStEmpresa < ActiveRecord::Migration
  def change
    add_column :st_empresas, :page_name, :string
  end
end
