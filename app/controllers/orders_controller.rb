class OrdersController < ApplicationController
  before_filter :initialize_cart

  def index
    @orders = Order.order(created_at: :desc).all
  end

  def create
    @order_form = OrderForm.new(
      user: User.new(order_params[:user]),
      cart: @cart
      )

    if @order_form.save
      notify_user
      redirect_to root_path, notice: "Thank you for placing the order."
    else
      render "carts/checkout"
    end
  end

  def update
    @order = Order.find params[:id]
    if @order.update state_order_params
      redirect_to order_path, notice: "Order was updated."
    end
  end

private

  def notify_user
    @order_form.user.send_reset_password_instructions
    OrderMailer.order_confirmation(@order_form.order).deliver
  end

  def order_params
    params.require(:order_form).permit(
      user: [:name, :phone, :address, :city, :country, :postal_code, :email]
      )
  end

  def state_order_params
    params.require(:order).permit(:state)
  end
end