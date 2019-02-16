class Media < ApplicationRecord
  has_many :ambiences
  default_scope { order(id: :desc) }
end
