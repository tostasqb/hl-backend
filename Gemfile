source 'https://rubygems.org'
gem 'dotenv-rails', groups: [:development, :test] # good to maintain up top

ruby '2.5.1'
gem 'rails', '~> 5.2.0'

gem 'pg', group: :production
gem 'sqlite3', group: :development

gem 'puma', '~> 3.11'

gem 'bcrypt', '~> 3.1.7'
gem 'jwt'
gem 'simple_command'

gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
