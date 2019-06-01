class ProductTag < ApplicationRecord
  has_one_attached :image

  belongs_to :product
  belongs_to :tag

  self.table_name = 'product_tags'

  rails_admin do
    label 'Características de Produto'

    field :id
    field :image
    field :product
    field :tag
    field :created_at

    field :image do
      label 'Imagem'
    end

    field :created_at do
      label 'Data de criação'
    end

    field :product do
      label 'produto'
    end

    field :tag do
      label 'Característica ou Cor'
    end

    edit do
      field :tag do
        label 'Nome da Característica ou Cor (Criar se não existir)'
      end

      field :created_at do
        visible(false)
      end
      field :id do
        visible(false)
      end
    end
  end
end
