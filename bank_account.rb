class BankAccount
 @@min_balance= 200

  attr_reader :balance, :name
  def initialize(balance, name)
    if balance < @@min_balance
    raise ArgumentError, "Sorry, the minimum opening balance is #{@@min_balance}"
  end
    @name = name
    @balance = balance
  end

  def display_balance
    puts "#{name} has a current balance of: $#{@balance}"
  end

  def deposit(amount)
    @balance += amount
    puts "Deposited #{amount}. New balance: $#{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    puts "Withdrew #{amount}. New balance: $#{@balance}"
  end

  def transfer(transfer_amount, to_account)
    self.withdraw(transfer_amount)
    to_account.deposit(transfer_amount)
  end

  def self.minimum_balance=(balance)
    @@min_balance = balance
  end
end

account1 = BankAccount.new(500, "Sarah")
account2 = BankAccount.new(500, "John")





















# account1.balance

# account1.transferTo(200, account2)
# puts account1.transfer(200, account2)
# p account1
#     attr_accessor :name, :balance
#     @name = name
#     @balance = balance
#   end
# end


# attr_accessor :name, :opening_balance
#
#
#
#   def gathername
#     puts @name
#   end
#
#   def access_balance
#     puts @opening_balance
#   end
