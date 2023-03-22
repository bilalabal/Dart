void main(List<String> args) {
  List<String?>?
      names; // Declare a nullable list of nullable strings called 'names'

  names?.add('Foo'); // If 'names' is not null, add 'Foo' to it
  names?.add(null); // If 'names' is not null, add null to it
  print(
      names); // Print the current state of 'names' (null because it hasn't been initialized yet)

  final String? first = names
      ?.first; // Assign the first element of 'names' to 'first' if 'names' is not null
  print(first ??
      'No first name found'); // Print the value of 'first', or 'No first name found' if 'first' is null

  names = []; // Initialize 'names' as an empty list
  names.add('Baz'); // Add 'Baz' to 'names'
  names.add(null); // Add null to 'names'
  print(names); // Print the current state of 'names' (['Baz', null])
}
