class ContactMailer < ActionMailer::Base
default to: "info@simpleshop.com"
def contact_email(name, email, message)
@name = name
@email = email
@message = message
mail(from: email, subject: 'Simpleshop.com Contact Form Message')
end
end
