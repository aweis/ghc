# Luckily, we had a google account set up for ourselves
# @TODO this is just a hack, not for production
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gathr.com",
  :user_name            => "techstartuplab",
  :password             => "gateshillman",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

# @FIXME when we actually get a domain
ActionMailer::Base.default_url_options[:host] = "localhost:3000"
