class Notifications < ActionMailer::Base
  default from: "larrybuch@gmail.com"
  def welcome (user)
    @user = user
    @greeting = "Hi"
    mail to: "larry@larrybuch.com", :subject => "Welcome to Pirate Mail ... "
  end

  def logoff
    @greeting = "Hi"
    mail to: "larrybuch@gmail.com", :subject => "Where are you going?"
  end
end
