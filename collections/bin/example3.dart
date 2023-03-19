void main(List<String> args) {
  final person1 = Person(
    age: 23,
    name: 'Bilal',
  );
  final person2 = Person(
    age: 23,
    name: 'Bilal',
  );

  final peacock = Peacock(name: 'Bilal', age: 23);
  print(person1.hashCode);
  print(peacock.hashCode);

  final beings = {person1, peacock};
  print(beings);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Peacock {
  final String name;
  final int age;

  Peacock({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Peacock: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Peacock && name == other.name && age == other.age;
}
