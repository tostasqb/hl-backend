class TagGroup < ApplicationRecord
  has_many :tags
  before_save :default_values

  def self.visible
    where(visible: true)
  end

  rails_admin do
    label 'Categorias'

    field :id
    field :name
    field :ordar
    field :created_at
    field :visible

    field :name do
      label "Nome"
    end
    field :ordar do
      label "Ordem"
    end
    field :visible do
      label "Visível"
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
  
  def default_values
    self.ordar ||= 999_999
  end
end
