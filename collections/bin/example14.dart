import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('-----------------------------');
  testCanonicalizedMap();
  print('-----------------------------');
  testCombinedIterableView();
  print('-----------------------------');
  testCombinedListView();
  print('-----------------------------');
  testCombinedMapView();
  print('-----------------------------');
  testMapMerging();
  print('-----------------------------');
}

void testMapMerging() {
  final info1 = {
    'name': 'Bilal',
    'age': 23,
    'address': 'Kano',
    'height': 1.8,
  };
  final info2 = {
    'name': 'Bilal',
    'age': 27,
    'address': 'Kano',
    'height': 1.8,
    'weight': 80,
  };
  final merge = mergeMaps(
    info1,
    info2,
    value: (one, two) => one,
  );
  print(merge);
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};
  var combinedMap = CombinedMapView([
    map1,
    map2,
    map3,
  ]);
  print(combinedMap);
  print(combinedMap['a']);
  print(combinedMap['b']);
  print(combinedMap['c']);
  print(combinedMap['d']);
  print(combinedMap['e']);
  print(combinedMap['f']);
  try {
    combinedMap['a'] = 10;
  } catch (e) {
    print(e);
  }
}

void testCombinedListView() {
  final hausaNames = ['Bala', 'Garba', 'Ahmadu'];
  final fulaniNames = ['Hardo', 'Modibbo', 'Jobe'];
  final yorubaNames = ['Itunu', 'Aregbesola', 'Oluwaseun'];
  final names = CombinedListView([
    hausaNames,
    fulaniNames,
    yorubaNames,
  ]);
  print(names);
  if (names.contains('Bala')) {
    print('Bala is in the list');
  }
}

void testCombinedIterableView() {
  final one = [1, 2, 3];
  final two = [10, 20, 30];
  final three = [40, 50, 60];
  var combined = CombinedIterableView([
    one,
    two,
    three,
  ]);
  two.add(40);
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
  print(combined.contains(5));
  print(combined.contains(10));
}

void testCanonicalizedMap() {
  final info = {
    'name': 'Bilal',
    'age': 23,
    'netWorthInB': 23,
    'poB': 'Kano',
    'sex': 'male',
    'address': 'Kano',
  };

  final canonMap = CanonicalizedMap.from(info, (key) => key.length);
  print(canonMap);
}

void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );
  print(boolList);
  boolList[3] = true;
  if (boolList[3]) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}
