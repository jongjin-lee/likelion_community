Rails.application.configure do
   config.action_mailer.default_url_options = { host: 'new-skkue-jongjin-lee.c9users.io', port: 3000 }
  
   config.action_mailer.delivery_method = :mailgun
   config.action_mailer.mailgun_settings = {
           api_key: 'key-21937197c06513fbfde5631d1c6e6acd',
           domain: 'sandboxd427c0668b974565a4d0a59cfd1df9ed.mailgun.org'
   }
  
   
  # config.action_mailer.default_url_options = {  :host => 'alcoholmaster-noonproject-2.c9.io', port: 3000 }  
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.delivery_method = :smtp      
  # config.action_mailer.smtp_settings = {
  #     :address => "email-smtp.us-west-2.amazonaws.com",
  #     :port => 465
  #     :domain => "gmail.com",
  #     :authentication => :login,
  #     :user_name => 'AKIAIZ7NAECH7L5AMEPQ',
  #     :password => 'Agedyn8CY656DIa7p0Vd/Cu8tLMZSei5mZ1zn8JqDhrl'
  # }
 
   
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = {
  #   :address => 'email-smtp.us-west-2.amazonaws.com',
  #   :authentication => :login,
  #   :user_name => 'AKIAIZ7NAECH7L5AMEPQ',
  #   :password => 'Agedyn8CY656DIa7p0Vd/Cu8tLMZSei5mZ1zn8JqDhrl',
  #   :enable_starttls_auto => true,
  #   :port => 465
  # }
  
  
  
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  # require 'carrierwave/orm/activerecord'
  
end
