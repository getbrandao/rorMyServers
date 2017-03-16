class ApplicationMailer < ActionMailer::Base
  default from: 'mailerbot@devcam.com'
  layout 'mailer'
end
