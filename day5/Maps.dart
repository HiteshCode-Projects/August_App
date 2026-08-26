void main() {
  //Map - Collection of Data - key:value

  Map<String, String> user = {"name": "Balaji", "email": "abc@gmail.com"};

  Map<String, dynamic> userProfile = {
    "username": "Sai",
    "LoginStatus": true,
    "password": 1234,
  };

  //Access The Data MapName["keyname"]
  print(user["name"]);

  print(userProfile["LoginStatus"]);

  print(userProfile);

  //Add the New Data - MapName["keyname"] = value
  userProfile["city"] = "Bangalore";

  print(userProfile);

  //Remove Mapname.remove("KeyName")
  userProfile.remove("password");

  print(userProfile);

  //update
  userProfile["LoginStatus"] = false;

  print(userProfile);

  //check the keyname.contains("keyname")

  if (userProfile.containsKey("username")) {
    print("username present");
  } else {
    print("username not found");
    
  }
}
