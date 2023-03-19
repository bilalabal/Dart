import 'dart:collection';
import 'dart:typed_data';

void main(List<String> args) {
  final bilal = Person(
    name: 'Bilal',
    siblings: [
      Person(
        name: 'Fatima',
      ),
    ],
  );

  try {
    bilal._siblings?.add(
      Person(name: 'Ummi'),
    );
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  const Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;
}
