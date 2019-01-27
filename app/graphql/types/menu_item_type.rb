module Types
  class MenuItemType < Types::BaseObject
    name 'MenuItem'

    field :id, !types.ID
    field :name, !types.String
    field :link, types.String
    field :order, types.Integer
    field :belongs_to, types.String
  end
end
