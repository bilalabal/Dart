// Define the main() function that calls describe() three times
void main(List<String> args) {
  describe(); // Call describe() with no arguments
  describe(something: null); // Call describe() with something set to null
  describe(
      something:
          'hello, dart'); // Call describe() with something set to a string
}

// Define the describe() function that takes an optional named parameter something
void describe({
  String? something =
      'Hello, world!', // Default value for something is 'Hello, world!'
}) {
  print(something); // Print the value of something to the console
}
