void main() {
  //Variable - Store Only 1 Value at time

  var name1 = "Visnu";
  var name2 = "Pooja";

  //List : Multiple Data at the same Time

  //Symbol - []

  //Rule : Index no-Posotion no of data Always Start wuth 0 (ZERO)

  //List<Data Type> Listname = [];

  List<String> studentsname = ["Pooja", "Arun", "Hemachandran", "Santosh"];
  print(studentsname);

  //Acceess The Lits daya ListName[indexNo]

  print(studentsname[1]);
  print(studentsname[3]);

  //Add The Data - Last of The List
  studentsname.add("Adil");

  print(studentsname);

  //Remove
  studentsname.remove("Arun");

  print(studentsname);

  //Total no of data
  //.length

  print(studentsname.length); 
}
