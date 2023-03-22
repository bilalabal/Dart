// Import necessary libraries
import 'dart:collection';
import 'dart:typed_data';

// Define the `main` function
void main(List<String> args) {
  // Create a `Person` object named `bilal` with one sibling named `Fatima`
  final bilal = Person(
    name: 'Bilal',
    siblings: [
      Person(
        name: 'Fatima',
      ),
    ],
  );

  // Try to add another `Person` object to `bilal`'s `_siblings` list
  try {
    bilal._siblings?.add(
      Person(name: 'Ummi'),
    );
  } catch (e) {
    // If an error occurs, print the error message
    print(e);
  }
}

// Define the `Person` class
class Person {
  // Define two instance variables: `name` (a `String`) and `_siblings` (a `List<Person>?`)
  final String name;
  final List<Person>? _siblings;

  // Define a getter for `siblings` that returns an unmodifiable view of `_siblings`
  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  // Define a constructor for `Person` that takes a `name` and an optional `siblings` list
  const Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;
}
