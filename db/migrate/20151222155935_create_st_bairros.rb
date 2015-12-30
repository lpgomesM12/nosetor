class CreateStBairros < ActiveRecord::Migration
  def change
    create_table :st_bairros do |t|
      t.string :nome_bairro
      t.string :latitude
      t.string :longitude
      t.boolean :flag_ativo
      t.references :st_cidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
