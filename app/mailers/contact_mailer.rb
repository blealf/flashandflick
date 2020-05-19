class ContactMailer < ApplicationMailer

    def new_contact_email
        @contact = params[:contact]

        mail(to: "blealf@gmail.com", subject: "You got a New Message")
    end
end
