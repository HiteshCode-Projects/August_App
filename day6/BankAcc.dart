class BankAccount {
  String accountNumber;
  String name;
  double balance;
  BankAccount(this.accountNumber, this.name, this.balance);
  void checkBalance() {
    print("Account Balance: ₹$balance");
  }
  void deposit(double amount) {
    balance = balance + amount;
    print("Deposited: ₹$amount");
    print("New Balance: ₹$balance");
  }
  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      print("Withdrawn: ₹$amount");
      print("Remaining Balance: ₹$balance");
    } else {
      print("Insufficient Balance");
    }
  }
}
void main() {
  BankAccount account = BankAccount("1234567890", "Ramakrishna", 5000);
  print("Bank Account Login");
  print("Account Number: ${account.accountNumber}");
  print("Account Holder: ${account.name}");
  print("");
  account.checkBalance();
  print("");
  account.deposit(2000);
  print("");
  account.withdraw(1500);
  print("");
  account.checkBalance();
}