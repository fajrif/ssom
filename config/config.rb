# Configuration options can be accessed as
# configatron.site_name
#   don't use symbol for checking environment

unless Rails.env.production?
  # only for :development & :test environment
	configatron.site_name = "D.A Photography"
	configatron.site_name_mobile = "D.A Photography"
  configatron.site_url = "localhost:3000"

  configatron.smtp_name = "smtp.gmail.com"
  configatron.smtp_port = 587

	configatron.company_name = "D.A Photography"
	configatron.admin_email = "admin@daphotography.com"

	configatron.support_name = "D.A Photography"
	configatron.support_email = "support@daphotography.com"

	configatron.no_reply_email = "playayodev@gmail.com"
  configatron.no_reply_password = "qwords777"

  configatron.site_env_note = "Local Server"

else
  # this is for production
	configatron.site_name = "D.A Photography"
	configatron.site_name_mobile = "D.A Photography"
  configatron.site_url = "localhost:3000"

  configatron.smtp_name = "smtp.gmail.com"
  configatron.smtp_port = 587

	configatron.company_name = "D.A Photography"
	configatron.admin_email = "admin@daphotography.com"

	configatron.support_name = "D.A Photography"
	configatron.support_email = "support@daphotography.com"

	configatron.no_reply_email = "playayodev@gmail.com"
  configatron.no_reply_password = "qwords777"

  configatron.site_env_note = "Production Server"

end
