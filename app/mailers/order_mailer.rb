class OrderMailer < ApplicationMailer
  def new_order_email
    @order = params[:order]

    user = User.first

    @order = {items: ['Iced Coffee', 'Yakult', 'Mango Juice']}

    mail(to: user.email, subject: "You got a new order!")
  end
end
