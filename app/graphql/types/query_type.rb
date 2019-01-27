module Types
  class QueryType < Types::BaseObject
    name 'Query'

    field :products, !types[Types::Product] do
      resolve -> (obj, args, ctx) {
        Product.all
      }
    end
  end
end
