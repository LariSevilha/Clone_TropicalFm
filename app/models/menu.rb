class Menu < ApplicationRecord
  has_many :link

  enum type_menu: {topo: 0, lateral: 1 }
  enum position_menu: {esquerda: 0, direita: 1 }
end
