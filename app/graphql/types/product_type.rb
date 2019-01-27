module Types
  class ProductType < Types::BaseObject
    name 'Product'

    field :id, !types.ID
    field :menu_item_id, !types.Integer
    field :title, !types.String
    field :description, types.String

    field :menu_item, Types::MenuItemType do
      resolve -> (obj, args, ctx) { obj.menu_item }
    end
  end
end
