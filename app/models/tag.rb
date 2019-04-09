class Tag < ApplicationRecord
  has_many :product_tags, dependent: :destroy
  has_many :products, through: :product_tags
  belongs_to :tag_group

  def tag_name
    tag_group.name
  end

  rails_admin do
    configure :product_tags do
      visible(false)
    end

    configure :products do
      visible(false)
    end
  end
end
