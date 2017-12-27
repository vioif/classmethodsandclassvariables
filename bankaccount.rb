class BankAccount

  @@interest_rate = 3.15
  @@accounts = []

  def initialize (name, balance)
    @name = name
    @balance = balance
  end

  def balance
    @balance
  end

  def deposit(plus)
    @balance += plus
  end

  def withdraw(minus)
    @balance -= minus
  end

  def self.create
    @@accounts << BankAccount.new
    return @@accounts.last
  end

  def self.total_funds
    total = 0
    @@accounts.each do |account|
      total += account.balance
    end
      return total
    end

  def self.interest_time
    @@accounts.each do |account|
      account.deposit(account.balance * @@interest_rate)
    end
  end

end
