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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121009205228) do

  create_table "estabelecimentos", :force => true do |t|
    t.string   "key"
    t.string   "logo_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "item_cardapios", :force => true do |t|
    t.string   "name_pt"
    t.string   "name_en"
    t.string   "description_pt"
    t.string   "description_en"
    t.string   "key"
    t.string   "price"
    t.string   "category"
    t.string   "estabelecimento_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "pedidos", :force => true do |t|
    t.string   "id_estabelecimento"
    t.string   "status"
    t.string   "lista_itens"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
