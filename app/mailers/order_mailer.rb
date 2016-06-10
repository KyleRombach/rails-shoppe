class OrderMailer < ActionMailer::Base
  default from: "rails.action1mailer@gmail.com"

  def order_confirmation(order)
    @order = order
    maile to: orders.user.email, subject: "Your order(#{order.id})"
  end
end