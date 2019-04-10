class Piece < ApplicationRecord
  rails_admin do
    list do
      exclude_fields :value
    end

    edit do
      field :key
      field :value, :wysihtml5 do
        config_options toolbar: { 
          fa: true, # use font-awesome instead of glyphicon
        }, 
        html: true, # enables html editor
        parserRules: { tags: { p:1 } } 
      end
    end
  end
end
