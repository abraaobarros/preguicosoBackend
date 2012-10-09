class ItemCardapio < ActiveRecord::Base
  attr_accessible :name_en, :name_pt, :description_pt, :description_en, :key, :category ,:estabelecimento_id
end
