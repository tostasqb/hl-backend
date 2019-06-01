class Piece < ApplicationRecord
  rails_admin do
    label 'Outras edições'

    field :id
    field :key

    field :key do
      label 'Chave de Edição'
    end

    list do
      exclude_fields :value
    end

    edit do
      field :key do
        label 'Chave de edição (Não mudar!)'
      end

      field :id do
        visible(false)
      end

      field :value, :wysihtml5 do
        config_options toolbar: { fa: true },
                       html: true, # enables html editor
                       parserRules: { tags: { p: 1 } }
      end
    end
  end
end
