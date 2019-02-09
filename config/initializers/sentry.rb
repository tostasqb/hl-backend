Raven.configure do |config|
  config.dsn = "https://99dce23ceb034730ac64570ca4d10d66:#{ENV['SENTRY_DSN']}@sentry.io/1380113" unless Rails.env == 'development'
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
