class CashRegister

	attr_accessor :total, :items, :discount


	def initialize(employee_discount=0)
		@discount = employee_discount
		@items = []
		@total = 0
	end

	def add_item(item, price, number = 1)
		@last_number = number
		@last_price = price*number


		number.times {@items << item}
		
		@total += @last_price
	end

	def apply_discount
		if @discount == 0
			"There is no discount to apply."
		else
			@total -= @total*(@discount/100.0)
			"After the discount, the total comes to $#{@total.to_i}."
		end
	end

	def void_last_transaction
		@last_number.times{@items.pop}
		@total -= @last_price
	end




end
