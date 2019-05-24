class Menu < ApplicationRecord
  has_many :link

  enum type_menu: {top: 0, side: 1 }
  enum position_menu: {left: 0, right: 1 }
end
