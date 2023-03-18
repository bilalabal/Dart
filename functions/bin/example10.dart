void main(List<String> args) {
  describePerson();
  describePerson(age: 23);
  describePerson(name: 'Bilal', age: 23);
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, you are $age years old');
}
