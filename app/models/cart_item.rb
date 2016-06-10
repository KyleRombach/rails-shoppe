class CartItem

  attr_reader :product_id, :quantity

  # after_save :remove_from_stock
  # after_destroy :return_to_stock

  def initialize(product_id, quantity=1)
    @product_id = product_id
    @quantity = quantity
  end

  def increment
    @quantity = @quantity + 1
  end

  def product
    Product.find product_id
  end

  def total_price
    product.price * quantity
  end

  def remove_from_stock
    product.stock -= self.quantity
    product.save
  end

  def return_to_stock
    product.stock += self.quantity
    product.save
  end
end