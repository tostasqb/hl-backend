if User.first.nil?
  User.create!(
    name: 'Website',
    email: 'website@highline.com.pt',
    password: ENV['AUTH_PASSWORD'],
    password_confirmation: ENV['AUTH_PASSWORD']
  )
end

if Product.first.nil?
  Product.create(title: 'Product One', description: 'First product description')
  Product.create(title: 'Product two', description: 'Another product')
  Product.create(title: 'Mardi grás III', description: 'Cor Mardi grás collection disponível em 5 cores')
end

# if Ambience.first.nil?
#   Ambience.create(media_id: 1)
#   Ambience.create(media_id: 2)
# end
