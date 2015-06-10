class UserMailer < ApplicationMailer

def form(user)
	@user=user
	mail(:to=>@user["email"], :subject=> "registerform")
end
end
