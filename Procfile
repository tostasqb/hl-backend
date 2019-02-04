web: bundle exec puma -C config/puma.rb
release: rails db:migrate RAILS_ENV=production
release: rails db:seed
