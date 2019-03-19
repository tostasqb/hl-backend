class ProductTag < ApplicationRecord
  has_one_attached :image

  self.table_name = 'product_tags'

  belongs_to :product
  belongs_to :tag
end
