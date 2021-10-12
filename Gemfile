source 'http://rubygems.org'
ruby '2.5.3'

gem 'dotenv-rails', groups: [:development, :test] # good to maintain up top

gem 'rails', '~> 5.2'
gem 'rails_admin', '~> 1.3'
gem 'bootstrap-wysihtml5-rails', '> 0.3.1.24'

gem 'pg', group: :production
gem 'sqlite3', '~> 1.3.6', group: :development

# active storage
gem 'aws-sdk-s3', require: false
gem "mini_magick"

gem 'kaminari'

gem 'puma', '~> 4.3'

gem 'bcrypt', '~> 3.1.7'
gem 'jwt'
gem 'simple_command'

gem 'sentry-raven'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'jbuilder' # Format json output

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
