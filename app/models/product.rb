class Product < ApplicationRecord
  has_many :product_tags, dependent: :destroy
  has_many :tags, through: :product_tags
  has_one_attached :image

  default_scope { order(id: :desc) }

  rails_admin do
    label 'Produto'

    field :id
    field :title
    field :tags
    field :image
    field :updated_at

    field :title do
      label "Nome"
    end
    field :tags do
      label "Características"
    end
    field :image do
      label "Imagem"
    end
    field :updated_at do
      label "Última actualização"
    end

    configure :product_tags do
      visible(false)
    end

    list do
      exclude_fields :description
    end

    edit do
      field :updated_at do
        visible(false)
      end
      field :id do
        visible(false)
      end

      field :title
      field :description, :wysihtml5 do
        label "Descrição"
        config_options toolbar: { 
          fa: true, # use font-awesome instead of glyphicon
        }, 
        html: true, # enables html editor
        parserRules: { tags: { p:1 } } 
      end
      field :tags
      field :image
    end
  end
end
