class MenuItem < ApplicationRecord
  has_many :products

  MAIN_MENU = {
    PAPEIS: 'PAPEIS DE PAREDE',
    TECIDOS: 'TECIDOS',
    TAPECARIAS: 'TAPEÇARIAS',
    ESTORES: 'ESTORES'
  }.freeze
end
