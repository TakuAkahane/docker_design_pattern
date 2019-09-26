account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)

proxy = BankAccountProxy.new(account)
proxy.deposit(50)
proxy.withdraw(10)

######################## 失敗パターン ########################
ap = AccountProxy.new(BankAccount.new(100))
ap.deposit(25)


######################## 遅延パターン ########################
account = VirtualAccountProxy.new(100)
account.deposit(50)
account.withdraw(20)
