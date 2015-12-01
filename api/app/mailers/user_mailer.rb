class UserMailer < ApplicationMailer
  default from: "noreply@vanderbilt.edu"

  def welcome_email(user, email_body)
    @user = user
    @url = 'http://vantage.vanderbilt.edu/login'
    mail(to: @user.email, 
         subject: 'We are sending email from Helix',
         body: email_body,
         content_type: "text/html")
  end
end
