class Product < ApplicationRecord
  has_many :product_tags, dependent: :destroy
  has_many :tags, through: :product_tags
  has_one_attached :image

  default_scope { order(id: :desc) }

  rails_admin do
    configure :product_tags do
      visible(false)
    end

    list do
      exclude_fields :description
    end

    edit do
      field :title
      field :description, :wysihtml5 do
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
