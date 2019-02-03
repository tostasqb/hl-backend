if User.first.nil?
  User.create!(
    name: 'Website',
    email: 'website@highline.com.pt',
    password: ENV['AUTH_PASSWORD'],
    password_confirmation: ENV['AUTH_PASSWORD']
  )
end

if MenuItem.first.nil?
  MenuItem.create(name: 'Prestige', belongs_to: 'TECIDOS')
  MenuItem.create(name: 'Look', belongs_to: 'TECIDOS')
end

if Product.first.nil?
  Product.create(menu_item_id: 1, title: 'Product One', description: 'First product description')
  Product.create(menu_item_id: 1, title: 'Product two', description: 'Another product')
  Product.create(menu_item_id: 1, title: 'Mardi grás III', description: 'Cor Mardi grás collection disponível em 5 cores')
end
