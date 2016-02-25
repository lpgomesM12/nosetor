class AddCollumAtivoToStCategory < ActiveRecord::Migration
  def change
    add_column :st_categories, :flag_ativo, :boolean
  end
end
