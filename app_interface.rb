require "./lib/bank_account.rb"

account = BankAccount.new
number = 0

while (number != 4)
  puts "Options\n1. Deposit\n2. Withdraw\n3. View A/c statement\n4. Exit"
  puts "Plase enter an option number:"
  number = gets.chomp.to_i

  puts "\n\n"

  if number == 1
    puts "Please enter amount:"
    amount = gets.chomp.to_i
    account.credit(amount)
    puts "You have successfully deposited $#{amount}"
  elsif number == 2
    puts "Please enter amount:"
    amount = gets.chomp.to_i
    account.debit(amount)
    puts "You have successfully withdrawn $#{amount}"
  elsif number == 3
    puts account.statement
  elsif number == 4
    puts "Thank you for banking with us"
  else
    puts "Please enter a valid number"
  end

  puts "\n\n"
end
