class CashRegister
    attr_accessor :total, :discount, :last_transaction
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
      @last_transaction = 0
    end
  
    def add_item(title, price, quantity = 1)
      quantity.times { @items << title }
      @last_transaction = price * quantity
      @total += @last_transaction
    end
  
    def apply_discount
      if discount > 0
        discount_amount = (@total * discount / 100.0).to_i
        @total -= discount_amount
        "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
      end
    end
  
    def items
      @items
    end
  
    def void_last_transaction
      @total -= @last_transaction
    end
  end
  

  