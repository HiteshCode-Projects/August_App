void main() {
  //Operators - Peform Action on Dat

  //1. Arthmetic Operators - + , - , / , * , %(Remainder)

  int price = 100;
  int qty = 2;

  int TotalBill = price * qty;
  print("The Total Bill is $TotalBill");

  //% - output Remainder
  print(10 % 2); // 0
  print(13 % 2); //  1

  //Left<Right = Left Number
  print(1 % 3); // 1
  print(2 % 9); // 2

  //2. Relation Opertaors /Comparsion Op- Boolean Format(Ouput)

  var a = 10;
  var b = 5;

  bool result = a > b;
  print(result); //true

  double balance = 800.00;

  bool canPay = balance >= 800;
  print(canPay);

  var x = 10;
  var y = 10;
  print(x == y); //True

  //Logical Op
  //AND - && When Both Condition is True Output is True
  //OR - || When Atleast one Condition is  True Output is True
  //! - Opposite Value

  bool isLoggedIn = true;
  bool hasSub = false;

  bool canWatchMovie = isLoggedIn && hasSub;

  print("Can Watch Movie $canWatchMovie");

  bool isAdmin = true;

  bool isModertaor = false;

  bool canDelete = isAdmin || isModertaor;
  print(canDelete);

  //Assigment Op - = equal to
  int score = 10;

  score += 5;

  print(score);

  //Ternarny Op - Decision/Condition in One Line

  bool isLogin = true;

  String message = isLogin ? "Good Morning user" : "Please login";
  print(message);

  //Null - Aware operator - ??
  //When Data Maybe Empty

  String? name;

  String displayName = name ?? "Guest";

  print(displayName);
}
