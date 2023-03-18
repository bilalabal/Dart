import 'dart:developer';

void main(List<String> args) {
  const names = ['Fatima', 'Bilal', 'Ummi', 'Salma'];
  var counter = 0;
  while (counter < names.length) {
    print(names[counter]);
    counter++;
  }

  print("-------------");

  counter = names.length;
  while (--counter >= 0) {
    print(names[counter]);
  }

  print("-------------");

  counter = 0;
  do {
    print(names[counter++]);
  } while (counter < names.length);

  print("-------------");

  counter = 0;
  do {
    print(names[counter++]);
    if (counter == 2) {
      break;
    }
  } while (counter < names.length);

  print("-------------");

  counter = 0;
  do {
    final name = names[counter++];
    if (name == 'Bilal') {
      continue;
    }
    print(name);
  } while (counter < names.length);
}
