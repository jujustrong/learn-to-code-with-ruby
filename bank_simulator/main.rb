class Account
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount if amount > 0
  end

  def withdraw(amount)
    @balance -= amount if amount > 0
  end

end

bank_account = Account.new(20_000)
p bank_account.balance
bank_account.deposit(56_300)
p bank_account.balance