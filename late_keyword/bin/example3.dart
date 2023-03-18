void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person.description);
}

class Person {
  late String description = heavyCalculationofDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }
  String heavyCalculationofDescription() {
    print('Function "heavyCalculationofDescription" is called');
    return 'Foo Bar';
  }
}
