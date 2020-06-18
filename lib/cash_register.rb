require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def total
    @total
  end 
  
  def add_item(title, price, quantity = 1)
    sum = price * quantity
    binding.pry
    @total = @total + sum
    @items << [title] * quantity
  end 
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_amount = @total/5
      @total = @total - discount_amount
      "After the discount, the total comes to $#{@total}."
    end 
  end 
  
  def items
    @items
  end 

end 


