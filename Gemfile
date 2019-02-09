source 'http://rubygems.org'
ruby '2.5.3'

gem 'dotenv-rails', groups: [:development, :test] # good to maintain up top

gem 'rails', '~> 5.2.1.1'

gem 'pg', group: :production
gem 'sqlite3', group: :development

gem 'puma', '~> 3.11'

gem 'bcrypt', '~> 3.1.7'
gem 'jwt'
gem 'simple_command'

gem 'sentry-raven'

gem 'bootsnap', '>= 1.1.0', require: false

# Format json output
gem 'rabl'
gem 'oj'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'rubocop'
  gem 'listen'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
