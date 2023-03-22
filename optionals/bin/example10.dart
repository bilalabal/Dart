void main(List<String> args) {
  String? getFullNameOptional() {
    // Declare a function called 'getFullNameOptional' that returns a nullable string
    return 'Foo Bar'; // Return the string 'Foo Bar'
  }

  String getFullName() {
    // Declare a function called 'getFullName' that returns a non-nullable string
    return 'Foo Bar'; // Return the string 'Foo Bar'
  }

  final String fullName = getFullNameOptional() ??
      getFullName(); // Call 'getFullNameOptional', or if it returns null, call 'getFullName'
  print(fullName); // Print the value of 'fullName'

  final someName =
      getFullNameOptional(); // Call 'getFullNameOptional' and assign the result to 'someName'
  someName.describe(); // Call the 'describe' function on 'someName'
}

extension Describe on Object? {
  // Declare an extension called 'Describe' that applies to nullable objects
  void describe() {
    // Declare a function called 'describe'
    if (this == null) {
      // Check if 'this' is null
      print(
          'This object is null'); // Print a message indicating that 'this' is null
    } else {
      print(
          '$runtimeType: $this'); // Print the runtime type of 'this' and its value
    }
  }
}
