class UserMailer < ApplicationMailer
  default from: "rails.action1mailer@gmail.com"

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/login'

    mail(to: @user.email, subject: 'Welcome to the Shop Online Site')
  end
end