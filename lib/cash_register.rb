class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction_amount
  
  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @last_transaction_amount = price * quantity
    quantity.times do
      items << title
    end
  end
    
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items=(list)
    @items = list
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= last_transaction_amount
  end
  
end