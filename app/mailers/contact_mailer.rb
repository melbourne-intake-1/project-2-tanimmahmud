class ContactMailer < ApplicationMailer
  default from: 'tanimmahmud08@gmail.com'

  def send_contact_email(name, email,subject, message)
    @email = email
    @message = message
    @name = name
    @subject = subject
    mail(
        to: 'tanimmahmud08@gmail.com',
        subject: 'New contact message'
    ) do |format|
      format.text { render 'contact_mailer'}
      format.text { render 'contact_mailer'}
    end
  end
end
