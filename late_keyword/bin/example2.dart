// Define a function called provideName that returns a string
String provideName() {
  // Print a message to the console
  print('Function is called');
  // Return the string "Bilal"
  return 'Bilal';
}

// Define the main function
void main(List<String> args) {
  // Print a message to the console
  print('Before');
  // Declare a variable called name using the 'late' keyword,
  // which means it will be initialized at a later time but
  // before it is first used
  late String name = provideName();
  // Print a message to the console
  print('After');
  // Print the value of the name variable to the console
  print(name);
}
