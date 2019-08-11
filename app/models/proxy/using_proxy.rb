ap = AccountProxy.new(BankAccount.new(100))
ap.deposit(25)
ap.withdraw(50)
puts("account balance is now: #{ap.balance}")
