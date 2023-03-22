// Define the main function that takes a list of strings as an argument
void main(List<String> args) {
  // Call the makeUpperCase function with no arguments
  makeUpperCase();

  // Call the makeUpperCase function with null as the first argument and 'foo' as the second argument
  makeUpperCase(null, 'foo');

  // Call the makeUpperCase function with 'Bilal' as the first argument
  makeUpperCase('Bilal');
}

// Define the makeUpperCase function with two optional parameters
void makeUpperCase([
  String? name, // Nullable String parameter with no default value
  String lastName = 'Bar', // String parameter with a default value of 'Bar'
]) {
  // Convert the name parameter to uppercase and print it to the console if it is not null
  print(name?.toUpperCase());

  // Convert the lastName parameter to uppercase and print it to the console
  print(lastName.toUpperCase());
}
