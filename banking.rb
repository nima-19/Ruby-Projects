class Account
	attr_reader :name , :balance
	def initialize(name,balance = 500)
		@name = name
		@balance = balance 
	end

	private
	def pin()
		@pin = 1234
	end

	private 
	def pin_error()
		@pin = 1234
		"Access denied: incorrect PIN."
	end

	public 
	def display_balance(pin_number)
	   if pin_number == pin
			puts "Balance: $#{@balance}."
	   else
			puts pin_error
	  end
	end
	
	def withdraw(pin_number,amount)
  	  if pin_number == pin
      		@balance -= amount
      		puts "Withdraw #{amount}. New balance: $#{@balance}."
    	  else
      		puts pin_error
          end
	end
end
checking_account = Account.new(500)
checking_account.display_balance(1234)
checking_account.withdraw(1234,100)
