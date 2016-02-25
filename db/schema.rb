# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160223100001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "st_bairros", force: :cascade do |t|
    t.string   "nome_bairro"
    t.string   "latitude"
    t.string   "longitude"
    t.boolean  "flag_ativo"
    t.integer  "st_cidade_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "st_bairros", ["nome_bairro"], name: "index_st_bairros_on_nome_bairro", using: :btree
  add_index "st_bairros", ["st_cidade_id"], name: "index_st_bairros_on_st_cidade_id", using: :btree

  create_table "st_categoriaprodutos", force: :cascade do |t|
    t.string   "nome_categoria"
    t.integer  "st_category_id"
    t.integer  "user_inclusao"
    t.integer  "integer"
    t.integer  "user_exclusao"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "st_categoriaprodutos", ["integer"], name: "index_st_categoriaprodutos_on_integer", using: :btree
  add_index "st_categoriaprodutos", ["st_category_id"], name: "index_st_categoriaprodutos_on_st_category_id", using: :btree
  add_index "st_categoriaprodutos", ["user_exclusao"], name: "index_st_categoriaprodutos_on_user_exclusao", using: :btree
  add_index "st_categoriaprodutos", ["user_inclusao"], name: "index_st_categoriaprodutos_on_user_inclusao", using: :btree

  create_table "st_categories", force: :cascade do |t|
    t.string   "nome_categoria"
    t.integer  "father_id"
    t.integer  "integer"
    t.integer  "user_inclusao"
    t.integer  "user_exclusao"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "flag_ativo"
  end

  add_index "st_categories", ["integer"], name: "index_st_categories_on_integer", using: :btree
  add_index "st_categories", ["user_exclusao"], name: "index_st_categories_on_user_exclusao", using: :btree
  add_index "st_categories", ["user_inclusao"], name: "index_st_categories_on_user_inclusao", using: :btree

  create_table "st_cidades", force: :cascade do |t|
    t.string   "nome_cidade"
    t.integer  "st_estado_id"
    t.boolean  "flag_ativo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "st_cidades", ["st_estado_id"], name: "index_st_cidades_on_st_estado_id", using: :btree

  create_table "st_empresas", force: :cascade do |t|
    t.string   "nome_empresa"
    t.string   "desc_anuncioempresa"
    t.string   "tele_telefone1"
    t.string   "tele_telefone2"
    t.text     "desc_palavrachave"
    t.string   "desc_cnpj"
    t.integer  "st_endereco_id"
    t.integer  "st_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "page_name"
  end

  add_index "st_empresas", ["desc_palavrachave"], name: "index_st_empresas_on_desc_palavrachave", using: :btree
  add_index "st_empresas", ["st_category_id"], name: "index_st_empresas_on_st_category_id", using: :btree
  add_index "st_empresas", ["st_endereco_id"], name: "index_st_empresas_on_st_endereco_id", using: :btree

  create_table "st_enderecos", force: :cascade do |t|
    t.string   "nome_rua"
    t.string   "desc_quadra"
    t.string   "desc_lote"
    t.string   "desc_numero"
    t.string   "desc_complemento"
    t.string   "desc_cep"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "st_bairro_id"
    t.integer  "st_cidade_id"
    t.integer  "user_inclusao"
    t.integer  "integer"
    t.integer  "user_exclusao"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "st_enderecos", ["integer"], name: "index_st_enderecos_on_integer", using: :btree
  add_index "st_enderecos", ["st_bairro_id"], name: "index_st_enderecos_on_st_bairro_id", using: :btree
  add_index "st_enderecos", ["st_cidade_id"], name: "index_st_enderecos_on_st_cidade_id", using: :btree
  add_index "st_enderecos", ["user_exclusao"], name: "index_st_enderecos_on_user_exclusao", using: :btree
  add_index "st_enderecos", ["user_inclusao"], name: "index_st_enderecos_on_user_inclusao", using: :btree

  create_table "st_estados", force: :cascade do |t|
    t.string   "nome_estado"
    t.string   "sigl_estado"
    t.boolean  "flag_ativo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "st_itemprodutos", force: :cascade do |t|
    t.integer  "st_item_id"
    t.integer  "st_produto_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "numr_quatidade"
  end

  add_index "st_itemprodutos", ["st_item_id"], name: "index_st_itemprodutos_on_st_item_id", using: :btree
  add_index "st_itemprodutos", ["st_produto_id"], name: "index_st_itemprodutos_on_st_produto_id", using: :btree

  create_table "st_items", force: :cascade do |t|
    t.string   "nome_item"
    t.integer  "st_categoriaproduto_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "st_items", ["st_categoriaproduto_id"], name: "index_st_items_on_st_categoriaproduto_id", using: :btree

  create_table "st_produtos", force: :cascade do |t|
    t.string   "nome_produto"
    t.decimal  "valr_produto"
    t.integer  "st_categoriaproduto_id"
    t.integer  "st_empresa_id"
    t.integer  "user_inclusao"
    t.integer  "integer"
    t.integer  "user_alteracao"
    t.integer  "user_exclusao"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "st_produtos", ["integer"], name: "index_st_produtos_on_integer", using: :btree
  add_index "st_produtos", ["st_categoriaproduto_id"], name: "index_st_produtos_on_st_categoriaproduto_id", using: :btree
  add_index "st_produtos", ["st_empresa_id"], name: "index_st_produtos_on_st_empresa_id", using: :btree
  add_index "st_produtos", ["user_alteracao"], name: "index_st_produtos_on_user_alteracao", using: :btree
  add_index "st_produtos", ["user_exclusao"], name: "index_st_produtos_on_user_exclusao", using: :btree
  add_index "st_produtos", ["user_inclusao"], name: "index_st_produtos_on_user_inclusao", using: :btree

  create_table "st_tamanhoprodutos", force: :cascade do |t|
    t.string   "desc_tamanho"
    t.decimal  "valr_produto"
    t.integer  "st_produto_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "st_tamanhoprodutos", ["st_produto_id"], name: "index_st_tamanhoprodutos_on_st_produto_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "nome"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "st_bairros", "st_cidades"
  add_foreign_key "st_categoriaprodutos", "st_categories"
  add_foreign_key "st_cidades", "st_estados"
  add_foreign_key "st_empresas", "st_categories"
  add_foreign_key "st_empresas", "st_enderecos"
  add_foreign_key "st_enderecos", "st_bairros"
  add_foreign_key "st_enderecos", "st_cidades"
  add_foreign_key "st_itemprodutos", "st_items"
  add_foreign_key "st_itemprodutos", "st_produtos"
  add_foreign_key "st_items", "st_categoriaprodutos"
  add_foreign_key "st_produtos", "st_categoriaprodutos"
  add_foreign_key "st_produtos", "st_empresas"
  add_foreign_key "st_tamanhoprodutos", "st_produtos"
end
