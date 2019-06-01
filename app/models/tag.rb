class Tag < ApplicationRecord
  has_many :product_tags, dependent: :destroy
  has_many :products, through: :product_tags
  belongs_to :tag_group

  def tag_name
    tag_group.name
  end

  rails_admin do
    label 'Características ou Cores'

    field :id
    field :name
    field :tag_group
    field :created_at

    field :name do
      label 'nome'
    end

    field :tag_group do
      label 'Categoria'
    end
    field :created_at do
      label 'Data de criação'
    end

    edit do
      field :created_at do
        visible(false)
      end
      field :id do
        visible(false)
      end
    end
  end
end
