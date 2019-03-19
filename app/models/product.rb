class Product < ApplicationRecord
  has_many :product_tags
  has_many :tags, through: :product_tags
  has_one_attached :image

  default_scope { order(id: :desc) }

  rails_admin do
    configure :product_tags do
      visible(false)
    end
  end
end
