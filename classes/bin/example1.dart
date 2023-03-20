void main(List<String> args) {
  final person1 = Person(
    name: 'Bilal',
    age: 23,
  );
  print(person1.name);
}

class Person {
  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age,
  });
}
