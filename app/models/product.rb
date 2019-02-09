class Product < ApplicationRecord
  belongs_to :menu_item
  default_scope { order(id: :desc) }

  def menu
    menu_item.name
  end
end
