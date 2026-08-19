void main() {
  //Condition - Make Decision

  //1. if(Condition) - If Will Only Gives output Whn Condition is True

  bool isLoggedin = true;

  if (isLoggedin) {
    //Body
    print("Welcome To My App");
  }

  var age = 12;

  if (age >= 18) {
    print("Eligble For Driving");
  }

  //if- True  else- False

  bool paymentSuccess = false;

  if (paymentSuccess) {
    print("Payment Succesfull");
  } else {
    print("Payment failed");
  }

  //Multiple Condition - else if statement
  int rating = 2;

  if (rating == 5) {
    print("Execellent");
  } else if (rating == 4) {
    print("Very good");
  } else if (rating == 3) {
    print("Good");
  } else {
    print("Need Improvment");
  }
}
