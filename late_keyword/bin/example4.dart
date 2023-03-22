// Define a main function that takes in a list of strings as arguments
void main(List<String> args) {
  // Create a new instance of the Person class
  final person = Person();
  // Print the person's full name
  print(person.fullName);
  // Print the person's first name
  print(person.firstName);
  // Print the person's last name
  print(person.lastName);
}

// Define a Person class
class Person {
  // Declare three late-initialized instance variables: fullName, firstName, and lastName
  // The 'late' keyword means that the variables will be initialized lazily, the first time they are accessed
  late String fullName = _getFullName();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  // Define a private method to get the full name
  String _getFullName() {
    // Print a message to indicate that this method has been called
    print('_getFullName() is called');
    // Return a hardcoded full name
    return 'Bilal Abdullahi';
  }
}
