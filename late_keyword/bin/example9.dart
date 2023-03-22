// Define a Person class with a name field
class Person {
  final String name;

  Person({required this.name});
}

// Define a family class with a wrong implementation of membersCount calculation
class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    // Calculate the number of members in the family and set membersCount
    membersCount = getMembersCount();
  }

  // Method to get the number of members in the family
  int getMembersCount() {
    // Print a message to indicate that the method is being called
    print('Getting members count');
    // Count the number of members in the family and return it
    return members.length;
  }
}

// Define a family class with a right implementation of membersCount calculation
class RightImplementationOfFamily {
  final Iterable<Person> members;
  // Initialize membersCount using getMembersCount method so it is calculated only once
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});

  // Method to get the number of members in the family
  int getMembersCount() {
    // Print a message to indicate that the method is being called
    print('Getting members count');
    // Count the number of members in the family and return it
    return members.length;
  }
}

// Main function to create instances of both family classes and persons
void main(List<String> args) {
  // Create instances of Person
  final bilalAbdul = Person(name: 'Bilal Abdullahi');
  final fatiAbdul = Person(name: 'Fatima Abdullahi');

  // Create an instance of WrongImplementationOfFamily and print its details
  final abdulFamily =
      WrongImplementationOfFamily(members: [bilalAbdul, fatiAbdul]);
  print(abdulFamily);
  print(abdulFamily.membersCount);

  // Create instances of Person
  final bushiraUmar = Person(name: 'Bushira Umar');
  final aishaUmar = Person(name: 'Aisha Umar');

  // Create an instance of RightImplementationOfFamily and print its details
  final umarFamily =
      RightImplementationOfFamily(members: [bushiraUmar, aishaUmar]);
  print(umarFamily);
  print(umarFamily.membersCount);
}
