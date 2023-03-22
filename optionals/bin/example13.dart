void main(List<String> args) {
  // Prints an empty string because both arguments are null
  print(fullName(null, null));

  // Prints only the first name because the last name is null
  print(fullName('Bilal', null));

  // Prints the full name because both arguments have values
  print(fullName('Bilal', 'Abdullahi'));
}

// Define a function that concatenates the first and last name
// If either name is null, it will be replaced by an empty space
String fullName(
  String? firstName,
  String? lastName,
) =>
    '${firstName.orDefault} ${lastName.orDefault}';

// Define an extension that returns a default value if an object is null
extension Defaultvalues<T> on T? {
  // If the object is not null, return it
  // If the object is null, return a default value based on its type
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return ' ' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value for type $T');
    }
  }
}
