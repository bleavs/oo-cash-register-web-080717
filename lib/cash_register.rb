require "pry"

class CashRegister

  attr_accessor :total, :title, :discount, :items, :last_transaction

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @last_transaction = self.total


    quantity.times do
      self.items << title
    end
  end

  def apply_discount
    if self.discount != 0
      self.total -= self.discount*10
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
