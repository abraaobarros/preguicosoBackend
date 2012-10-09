class CreateItemCardapios < ActiveRecord::Migration
  def change
    create_table :item_cardapios do |t|
      t.string :name_pt
      t.string :name_en
      t.string :description_pt
      t.string :description_en
      t.string :key
      t.string :price
      t.string :category
      t.string :estabelecimento_id
      t.timestamps
    end
  end
end
