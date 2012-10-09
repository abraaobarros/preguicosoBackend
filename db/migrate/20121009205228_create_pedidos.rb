class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :id_estabelecimento
      t.string :status
      t.string :lista_itens

      t.timestamps
    end
  end
end
