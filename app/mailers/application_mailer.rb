class ApplicationMailer < ActionMailer::Base
  default from: Contact.last.email
  layout 'mailer'
end
