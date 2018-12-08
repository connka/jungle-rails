class UserMail < ApplicationMailer
    default from: 'no-reply@jungle.com'

    def confirmation_email(user, order)
        @user = user
        mail(to: user.email, subject: "Thank you for your Order #{order.id}") if user
    end
end