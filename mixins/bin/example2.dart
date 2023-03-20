void main(List<String> args) {
  final bilalAbdu = Person(
    'Bilal',
    'Abdullahi',
  );
  print(bilalAbdu.fullName);
  print(getFullName(bilalAbdu));
}

String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  Person(
    this.firstName,
    this.lastName,
  );
}
