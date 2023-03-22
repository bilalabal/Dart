void main(List<String> args) {
  // create an instance of the Person class
  final person = Person();
  // print the age property of the person object
  print(person.age);
  // print the description property of the person object
  print(person.description);
}

// define a Person class
class Person {
  // initialize the description property using a function that performs heavy computation
  // the 'late' keyword is used to indicate that this property will be assigned a value at runtime
  late String description = heavyCalculationofDescription();

  // define the age property as a final integer that can be set during object creation
  final int age;

  // define a constructor for the Person class
  Person({this.age = 18}) {
    // print a message to the console when the constructor is called
    print('Constructor is called');
  }

  // define a function that performs a heavy computation to set the value of the description property
  String heavyCalculationofDescription() {
    // print a message to the console when the function is called
    print('Function "heavyCalculationofDescription" is called');
    // return a string to set the value of the description property
    return 'Foo Bar';
  }
}
