# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.site_key  = Rails.application.credentials.recapcha[:rechapcha_site]
  config.secret_key = Rails.application.credentials.recapcha[:rechapcha_secret]
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'
end