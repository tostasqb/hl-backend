if User.first.nil?
  User.create!(
    name: 'Website',
    email: 'website@highline.com.pt',
    password: ENV['AUTH_PASSWORD'] ,
    password_confirmation: ENV['AUTH_PASSWORD']
  )
end
