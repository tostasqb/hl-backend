class TagGroup < ApplicationRecord
  has_many :tags
  before_save :default_values

  def default_values
    self.ordar ||= 999_999
  end
end
