class User {
  //Parent Class

  String name;

  User(this.name);

  void login() {
    print("$name Logged in");
  }
}

//child class use extend keyword
// class childclassname extends parent classname
class Admin extends User {
  Admin(String name) : super(name);

  void deleteUser() {
    print("User Deleted");
  }
}

class Customer extends User {
  
  Customer(String name) : super(name);

  void PlaceOrder() {
    print("Order Placed");
  }
}

void main() {
  //Object

  Admin user1 = Admin("Vishnu");

  user1.login(); //Parent Class Method

  user1.deleteUser(); //ChildClass Method

  Customer customer1 = Customer("Santosh");

  customer1.login();
  customer1.PlaceOrder();

//  customer1.deleteUser();   //Error
}
