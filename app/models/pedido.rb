class Pedido < ActiveRecord::Base
  attr_accessible :id_estabelecimento, :lista_itens, :status
end
