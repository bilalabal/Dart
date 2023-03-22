void main(List<String> args) {
  final person = Person();
  person.description = 'A person';
  print(person.description);
  person.description = 'Another person';
  print(person.description);

  final woof = Dog();

  woof.description = 'A dog';
  print(woof.description);
  // try {
  //   woof.description = 'Another dog';
  // } catch (error) {
  //   print(error);
  // }
}

// This is a class representing a person.
class Person {
  // A late variable that stores a description of the person.
  late String description;
}

// This is a class representing a dog.
class Dog {
  // A final late variable that stores a description of the dog.
  // The 'final' keyword means that the variable cannot be reassigned
  // once it has been set.
  late final String description;
}
