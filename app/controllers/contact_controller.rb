class ContactController < ApplicationController
  def index
  end

  def mail
    return unless params[:contact]

    email = params[:contact][:email]
    message = params[:contact][:message]
    subject = params[:contact][:subject]
    name = params[:contact][:name]

    if (email.present? && message.present?)
      # Tell the ContactMailer to send an email
      ContactMailer.send_contact_email(name,email,subject,message).deliver_now
      flash[:success] = 'Email sent! Thank you for you email.'
      redirect_to root_path, notice: 'Email sent!'
    else
      flash[:warning] = 'Please fill out the form'
      redirect_to root_path
    end
  end
end
