# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

    def new_contact_email
        Contact.new(first_name: "Joe", last_name: "Smith", email: "joe@gmail.com", phone: "090-7777-8888", message: "I want to place an order!")
        ContactMailer.with(contact: Contact.first).new_contact_email
    end

end
