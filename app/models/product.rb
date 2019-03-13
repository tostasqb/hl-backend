class Product < ApplicationRecord
  belongs_to :menu_item
  has_many_attached :images

  default_scope { order(id: :desc) }

  def menu
    menu_item.name
  end
end
