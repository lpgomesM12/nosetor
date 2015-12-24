class CreateStEstados < ActiveRecord::Migration
  def change
    create_table :st_estados do |t|
      t.string :nome_estado
      t.string :sigl_estado

      t.timestamps null: false
    end
  end
end
