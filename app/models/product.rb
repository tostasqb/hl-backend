class Product < ApplicationRecord
  default_scope { order(id: :desc) }
end
