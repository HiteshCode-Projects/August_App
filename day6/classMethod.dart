class User {
  String name = "";
  int age = 0;

  //Method - is just like fucntion
  void greet() {
    //Method or function
    print("Hello Good evening $name");
  }
}

void main() {
  User user1 = User();

  user1.name = "Arun";

  //ObjectName.methodname
  user1.greet();
  
}
