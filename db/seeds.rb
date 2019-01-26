if User.first.nil?
  User.create!(
    name: 'Website',
    email: 'website@highline.com.pt',
    password: ENV['AUTH_PASSWORD'],
    password_confirmation: ENV['AUTH_PASSWORD']
  )
end

if MenuItem.first.nil?
  MenuItem.create(title: 'Product One', description: '2 retired monks walk into a bar')
end

if Product.first.nil?
  Product.create(title: 'Product One', description: '2 retired monks walk into a bar')
end
