class ProductTag < ApplicationRecord
  self.table_name = 'product_tags'

  belongs_to :product
  belongs_to :tag
end
