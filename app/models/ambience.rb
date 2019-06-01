class Ambience < ApplicationRecord
  has_one_attached :image

  rails_admin do
    label 'Ambientes'

    field :id
    field :image
    field :created_at

    field :image do
      label 'Imagem'
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
