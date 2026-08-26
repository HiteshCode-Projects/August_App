void main() {
  List<String> fruits = ["Apple", "Banana", "Apple"];
  print(fruits.length);

  //To Remove Duplication we use Set- It will Does not allow duplicate

  Set<String> categories = {"Electonics", "Fashion", "Books", "Fashion"};
  print(categories);

  //Add Item
  categories.add("kids");

  //Remove
  categories.remove("Books");

  print(categories);

  if (categories.contains("Travels")) {
    print("Travle Found");
  } else {
    print("Travel Not Found");
  }

  //Convert List To Set:  toSet()
  List<String> item = ["Apple", "Banana", "Apple"];
  print(item);

  Set<String> uniqueitem = item.toSet();
  print(uniqueitem);

  //Set To List  toList()
  List<String> finalItem = uniqueitem.toList();
  print(finalItem);

  //Real Example - Notification
  Set<String> notification = {};

  notification.add("New Mesage-whatsapp");
  notification.add("Swiggy");
  notification.add("New Mesage-whatsapp");
  notification.add("Insta");

  print(notification);

  for (var abc in notification) {
    print(abc);
  }
}
