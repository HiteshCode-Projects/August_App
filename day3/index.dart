void main() {
  //Loop : Task on Repatetive basis

  //Condition - True Loop Start and Condition - False Loop Stops

  //Print Number 1 to 10
  print(1);

  //for(start point;endi point;increment/decrement)
  //When Start and End Point is Given

  for (int i = 1; i <= 10; i++) {
    //Task
    print("The Number is $i");
  }

  //Task Print 10 to 1
  for (int j = 10; j >= 1; j--) {
    print("The Number is $j");
  }

  // while(condition)  -  //Condition - True Loop Start and Condition - False Loop Stops

  int count = 1;

  while (count <= 5) {
    print("Login Attempt $count");
    count++;
  }

  //Do-Task while(condition)- It will always run the code alteast for 1 time

  int number = 7;

  do {
    print("Welcome User");
  } while (number < 5);

  //Break - Stop the loop

  for (int k = 1; k <= 5; k++) {
    if (k == 3) {
      print("Item found");
      break;
    }

    print("Checking Item $k");
  }

  //continue- SKip and go ahead

  for (int x = 1; x <= 5; x++) {
    if (x == 3) {
      continue;
    }

    print("Showing Item $x");
  }

  //Print - SUM of Numbers from 1 to 5

  var sum = 0;
  for (int q = 1; q <= 5; q++) {
    sum += q;
  }
  print(sum);
}
