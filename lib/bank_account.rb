class BankAccount

  attr_reader :balance

  def initialize
    @array = ["Date || Credit || Debit || Balance"]
    @balance = 0
  end

  def credit(amount)
    @balance += amount
    @array << Time.now.strftime("%d/%m/%Y") + " || " + amount.to_s + " || || " + balance.to_s
  end

  def debit(amount)
    @balance -= amount
    @array << Time.now.strftime("%d/%m/%Y") + " || || " + amount.to_s + " || " + balance.to_s
  end

  def statement
    @array.reverse.rotate(-1).join("\n")
  end

end
