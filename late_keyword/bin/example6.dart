void main(List<String> args) {
  final person = Person();

  try {
    // not recommended. use nullable instead
    print(person.fullName);
  } catch (error) {
    print(error);
  }
  person.firstName = 'Bilal';
  person.lastName = 'Abdullahi';
  print(person.fullName);
}

class Person {
  late final String firstName;
  late final String lastName;
  late final String fullName = '$firstName $lastName';
}
