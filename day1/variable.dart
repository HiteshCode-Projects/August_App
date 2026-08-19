void main() {
  // Variable - It is like Box, In Which  we store data
  // Varaible can store Only ONE VALUE AT TIME
  // ; Acts Like Fullstop
  // InBuild Methods are like features that we can Directly
  //Synatx -

  // Type/Keyword VariableName-LogicalName = Value

  //1. var : Dart Figure Out the Data type of By Itself

  var name = "Sakilam";

  var age = 21;

  print(name);
  print(age);

  //2. String - "Anything Between Quotes is String" or 'Text'

  String email = "abc@gmail.com";
  print(email);


  //3. int - Whole Number

  int otp = 122314;

  int upiPin = 0000;

  print("The Otp Recieved is $otp");
  print("The UPI Pin is $upiPin");

  //$VariableName

  // double - keyword - Decimal Number Data

  double price = 199.99;
  print(price);

  // Boolean - bool(keyword) - true or false

  bool isLogged = true;
  bool isDarkMode = false;

  print(isDarkMode);
  print(isLogged);

  //dynamic - Can Change Data Type

  dynamic data = "Ramya";

  data = 1234;

  data = false;

  print(data);

  //const - Keyword - Fixed

  const appName = "Instagram";
  print("The Brand Name is $appName");



}
