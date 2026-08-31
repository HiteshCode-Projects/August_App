class User {
  //common Prop

  String name;
  String email;
  int age;

  //Constructor - It is Special Type of Method/Function - It has SAME NAME as CLASS Name
  // Auto Call When we create Object
  //  classname(this.propertyName , this.propetynMae)

  User(this.name, this.age,this.email);

  void greet(status) {
    print("$name Loggged In, Welcome Back , $status");
  }

  void Introduction() {
    print("Hello My Namme is $name and I am $age , Please contact via $email");
  }
}

void main() {
  User xyz = User("Vishnu", 21, "abc@gmail,com");

  xyz.greet("login");

  xyz.Introduction();
}
