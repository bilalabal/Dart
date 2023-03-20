import 'package:uuid/uuid.dart';

void main(List<String> args) {
  final uuid1 = const Uuid().v4();
  final uuid2 = const Uuid().v4();

  final person1 = Person(
    name: 'Bilal',
    age: 23,
    id: 'uuid1',
  );

  final person2 = Person(
    name: 'Bilal',
    age: 23,
    id: 'uuid2',
  );
  final person1Again = Person(
    name: 'bilal',
    age: 23,
    id: 'uuid1',
  );
  if (person1 == person2) {
    print('Person 1 and Person 2 are equal');
  } else {
    print('Person1 and Person 2 are NOT equal');
  }

  if (person1 == person1Again) {
    print('Person 1 and Person 1 Again are equal');
  } else {
    print('Person1 and Person 1 Again are NOT equal');
  }

  if (person1Again == person2) {
    print('person 1 Again and Person 2 are equal');
  } else {
    print('person 1 Again and Person 2 are NOT equal');
  }
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;
  final String name;
  final int age;

  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
