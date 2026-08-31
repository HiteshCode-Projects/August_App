//BluePrint of User - instagram , swiggy, uber , gpay

class User {
  //Common Prop
  String name = "";
  int age = 0;
}

void main() {
  //object - Real Things/User

  //format - classname objectname = classname();

  User customer1 = User();

  customer1.name = "Santosh";
  customer1.age = 21;

  User customer2 = User();

  customer2.name = "Ankita";

  print(customer2.name);

  print(customer1.name);
}
