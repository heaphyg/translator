class UserMailer < ActionMailer::Base
  default :from => "baddass.translator@gmail.com"

  def registration_confirmation(user)
    @user = user
    mail(
      :to => "#{user.name} <#{user.email}>",
      :subject => "Registered") do |format|
        format.html
    end
  end

  def new_word_confirmation(user)
    @user = user
    mail(
      :to => "#{user.name} <#{user.email}>",
      :subject => "New word created!") do |format|
        format.html
    end
  end

end
