void main(List<String> args) {
  // defines the main function that takes a List of String arguments and returns void
  final woof = Animal(
    // creates an Animal object called woof with a name of 'Woof' and an AnimalType of dog
    name: 'Woof',
    type: AnimalType.dog,
  );

  if (woof.type == AnimalType.cat) {
    // checks if the type of woof is cat
    print('Woof is cat'); // prints 'Woof is cat' if woof is a cat
  } else {
    print('Woof is not cat'); // prints 'Woof is not cat' if woof is not a cat
  }

  switch (woof.type) {
    // checks the type of woof using a switch statement
    case AnimalType.rabbit: // if woof is a rabbit, prints 'This is a rabbit'
      print('This is a rabbit');
      break;
    case AnimalType.dog: // if woof is a dog, prints 'This is a dog'
      print('This is a dog');
      break;
    case AnimalType.cat: // if woof is a cat, prints 'This is a cat'
      print('This is a cat');
      break;
  }
}

enum AnimalType {
  // defines an AnimalType enumeration with three possible values: rabbit, dog, and cat
  rabbit,
  dog,
  cat,
}

class Animal {
  // defines an Animal class with two final properties: name and type
  final String name;
  final AnimalType type;

  Animal({
    // defines a constructor for the Animal class that requires both a name and an AnimalType
    required this.name,
    required this.type,
  });
}
