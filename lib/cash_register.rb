
class CashRegister
attr_accessor :total, :discount, :last_transaction_amount, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity = 1) #has at least one item
    @total += (price * quantity) #multiplies the price to quantity and adds it == to total
    quantity.times { @items << title } #whatever the quantity is, multiply it by the title, then add it to the array
    @item_count = (price * quantity)
  end
 def apply_discount()
   if @discount > 0
     @discount = @discount/100.to_f
     @total = @total - (@total * (@discount))
     "After the discount, the total comes to $#{@total.to_i}."
   else
     "There is no discount to apply."
   end
 end


 def void_last_transaction
   @total -= @last_transaction_amount
 end

end
