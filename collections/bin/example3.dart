void main(List<String> args) {
  // Create two instances of Person with the same name and age
  final person1 = Person(
    age: 23,
    name: 'Bilal',
  );
  final person2 = Person(
    age: 23,
    name: 'Bilal',
  );

  // Create an instance of Peacock with the same name and age as the Person instances
  final peacock = Peacock(name: 'Bilal', age: 23);

  // Print the hash codes of person1 and peacock to the console
  print(person1.hashCode);
  print(peacock.hashCode);

  // Create a set containing both person1 and peacock instances
  final beings = {person1, peacock};

  // Print the contents of the beings set to the console
  print(beings);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  // Override the toString method to print the name and age of the person
  @override
  String toString() => 'Person: $name, $age';

  // Override the hashCode method to generate a hash code based on the name and age of the person
  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  // Override the == operator to check if two Person instances are equal based on their name and age
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

  // Override the toString method to print the name and age of the peacock
  @override
  String toString() => 'Peacock: $name, $age';

  // Override the hashCode method to generate a hash code based on the name and age of the peacock
  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  // Override the == operator to check if two Peacock instances are equal based on their name and age
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Peacock && name == other.name && age == other.age;
}
