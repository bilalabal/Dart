import 'example2.dart';

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

class Person {
  late String description;
}

class Dog {
  late final String description;
}
