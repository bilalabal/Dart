void main(List<String> args) {
  String? lastName; // Declare a nullable string called 'lastName'

  void changeLastName() {
    // Declare a function called 'changeLastName'
    lastName = 'Bar'; // Assign 'lastName' the value of 'Bar'
  }

  changeLastName(); // Call the 'changeLastName' function

  if (lastName?.contains('Bar') ?? false) {
    // Check if 'lastName' contains 'Bar', or return false if 'lastName' is null
    print(
        'Last name contain Bar'); // Print a message indicating that 'lastName' contains 'Bar'
  }

  if (lastName?.contains('Bar') == true) {
    // Check if 'lastName' contains 'Bar', or return false if 'lastName' is null
    print(
        'Last name contain Bar'); // Print a message indicating that 'lastName' contains 'Bar'
  }
}
