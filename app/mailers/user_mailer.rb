class UserMailer < ActionMailer::Base
  default :from => "admin@gathr.com"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => user.email, :subject => "Registered")
  end

  def password_reset(user)
    @user = user
    #attachments["cmugathr.png"] = File.read("#{Rails.root}/app/assets/images/cmugathr.png")
    mail :to => "#{user.first_name + " " + user.last_name} <#{user.email}>", :subject => "Password Reset"
  end
end
