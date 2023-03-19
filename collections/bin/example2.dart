import 'package:collection/collection.dart';

void main(List<String> args) {
  const names = {'Fatima', 'Bilal', 'Ummi', 'Salma'};

  print(names);
  print("-------------");

  // names.add('Adnan');
  // print(names);

  final names2 = ['Fatima', 'Bilal', 'Ummi', 'Salma', 'Fatima'];
  final uniqueNames = {...names2};
  print(uniqueNames);
  print("-------------");

  final foo1 = 'Foo';
  var foo2 = 'Foo';
  print(foo1.hashCode);
  print(foo2.hashCode);
  print("-------------");

  if (names.contains('Bilal')) {
    print('Found Bilal');
  } else {
    print('Did not find Bilal');
  }

  print("-------------");

  final ages1 = {25, 23, 21};
  final ages2 = {25, 23, 21};
  final ages3 = {21, 23, 25};
  if (ages1 == ages2) {
    print('Ages 1 is equal to Age 2');
  } else {
    print('Ages 1 is not equal to Age 2');
  }
  print("-------------");

  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print("-------------");

  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print("-------------");
}
