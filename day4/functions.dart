void main() {
  //Task : To run or Execute Dart Code

  //1. Function

  void sayHello() {
    //Body - Instruction - Task
    print("Hello User");
  }

  sayHello(); //Call The function by the name of function

  //2. Function with parameter (Parameter)

  void greetUser(String name) {
    print("Welcome $name");
  }

  greetUser("Vishnu");

  greetUser("Arun");

  //3. Function with Return Value
  int calcualteTotal(int price, int quantity) {
    return price * quantity;
  }

  int result = calcualteTotal(100, 2);
  print(result);

  bool isAdult(int age) {
    return age >= 18;
  }

  bool res = isAdult(20);
  print(res);

  //4. Arrow Function -Short form To Write Function  => symbol
  int add(int a, int b) => a + b;
  print(add(5, 3));

  //5. Optional Paramter - sqaure [paramater name ?] - Data is Not Always Needed
  void showProfile(String name, [int? age]) {
    print("Name is $name");

    if (age != null) {
      print("Age $age");
    }
  }

  // showProfile(); name is mandatory
  showProfile("Santosh");
  showProfile("jhon", 21);

  //Default Parameter ({Parameter in the Culry Bracket})

  void setTheme({String theme = "Light"}) {
    print("Default Theme is $theme");
  }

  setTheme();
  setTheme(theme: "Dark");  //Assign New value To Defaul paraameter
}
