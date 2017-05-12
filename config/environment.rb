# Load the Rails application.
require_relative 'application'


Rails.application.configure do
config.action_mailer.delivery_method = :smtp
config.action_mailer.perform_deliveries = true
# SMTP settings for gmail
config.action_mailer.smtp_settings = {
 :address              => "smtp.gmail.com",
 :port                 => 587,
 :user_name            => ENV['gmail_username'],
 :password             => ENV['gmail_password'],
 :authentication       => "plain",
:enable_starttls_auto => true
}
end

# Initialize the Rails application.
Rails.application.initialize!