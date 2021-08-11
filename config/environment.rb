# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# keys available in ~/.bashrc
ActionMailer::Base.smtp_settings = {
  :port           => '587',
  :address        => ENV['TRUSTIFI_URL'],
  :user_name      => ENV['TRUSTIFI_KEY'],
  :password       => ENV['TRUSTIFI_SECRET'],
  :domain         => 'herokuapp.com',
  :authentication => :plain,
  :enable_starttle_auto => true
}

ActionMailer::Base.delivery_method = :smtp
