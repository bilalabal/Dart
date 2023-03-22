void main(List<String> args) {
  // Print a message to indicate that the 'fullName' variable is being initialized
  print('late fullName is being initialized');
  // Declare 'fullName' variable with the 'late' keyword, which indicates that its value will not be known until runtime
  late final fullName = getFullName();
  // Declare 'resolvedFullName' variable and assign it the value of 'fullName'
  final resolvedFullName = fullName;
  // Print the value of 'resolvedFullName'
  print('resolvedFulName = $resolvedFullName');
}

String getFullName() {
  // Print a message to indicate that the 'getFullName()' function is being called
  print('getFullName() is called');
  // Return the string 'John Doe', which represents a person's full name
  return 'John Doe';
}
