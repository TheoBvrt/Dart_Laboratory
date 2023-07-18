class BankAccount {
  int accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Nouveau solde : $balance');
  }

  void withdraw (double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Nouveau solde : $balance');
    } else {
      print('Solde insufisant !');
    }
  }
}

class SavingAccount extends BankAccount {
  int interestRate;
  double savedBalance = 0;

  SavingAccount(this.interestRate, int accountNumber, double balance) : super (accountNumber, balance);

  @override
  void deposit (double amount){
    savedBalance = amount * (interestRate / 100);
    amount -= amount * (interestRate / 100);
    super.withdraw(amount);
  }
}