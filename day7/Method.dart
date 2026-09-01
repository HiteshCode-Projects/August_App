//Method Overriding - SAME METHOD NAME OF CHILD AND PARRENT

class User {
  void login() {
    print("User Logged in");
  }
}

class Admin extends User {
  @override
  void login() {
    print("Admin Logged in In With Full Access");
  }
}

void main() {
  Admin user3 = Admin();

  user3.login();
}
