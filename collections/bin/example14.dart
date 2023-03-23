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
  // defines a function named testCombinedMapView that takes no arguments and returns void
  var map1 = {
    'a': 1,
    'b': 2,
    'c': 3
  }; // creates a Map<String, int> named map1 with three key-value pairs
  var map2 = {
    'b': 4,
    'c': 5,
    'd': 6
  }; // creates a Map<String, int> named map2 with three key-value pairs
  var map3 = {
    'c': 7,
    'd': 8,
    'e': 9
  }; // creates a Map<String, int> named map3 with three key-value pairs
  var combinedMap = CombinedMapView([
    // creates a CombinedMapView object named combinedMap by passing in a list of the three previously created maps
    map1,
    map2,
    map3,
  ]);
  print(
      combinedMap); // prints out the contents of the CombinedMapView object combinedMap
  print(combinedMap[
      'a']); // prints the value associated with the key 'a' in the CombinedMapView object combinedMap (should be 1)
  print(combinedMap[
      'b']); // prints the value associated with the key 'b' in the CombinedMapView object combinedMap (should be 2)
  print(combinedMap[
      'c']); // prints the value associated with the key 'c' in the CombinedMapView object combinedMap (should be 3)
  print(combinedMap[
      'd']); // prints the value associated with the key 'd' in the CombinedMapView object combinedMap (should be 6)
  print(combinedMap[
      'e']); // prints the value associated with the key 'e' in the CombinedMapView object combinedMap (should be 9)
  print(combinedMap[
      'f']); // prints the value associated with the key 'f' in the CombinedMapView object combinedMap (should be null)
  try {
    combinedMap['a'] =
        10; // tries to update the value associated with the key 'a' in the CombinedMapView object combinedMap, which should fail since CombinedMapView is read-only
  } catch (e) {
    print(
        e); // prints the error message thrown by the CombinedMapView object combinedMap when attempting to modify it (should be "Unsupported operation: Cannot modify a CombinedMapView.")
  }
}

void testCombinedListView() {
  // defines a function named testCombinedListView that takes no arguments and returns void
  final hausaNames = [
    'Bala',
    'Garba',
    'Ahmadu'
  ]; // creates a List<String> named hausaNames with three elements
  final fulaniNames = [
    'Hardo',
    'Modibbo',
    'Jobe'
  ]; // creates a List<String> named fulaniNames with three elements
  final yorubaNames = [
    'Itunu',
    'Aregbesola',
    'Oluwaseun'
  ]; // creates a List<String> named yorubaNames with three elements
  final names = CombinedListView([
    // creates a CombinedListView object named names by passing in a list of the three previously created lists
    hausaNames,
    fulaniNames,
    yorubaNames,
  ]);
  print(names); // prints out the contents of the CombinedListView object names
  if (names.contains('Bala')) {
    // checks if the CombinedListView object names contains the string 'Bala'
    print(
        'Bala is in the list'); // prints out 'Bala is in the list' if the CombinedListView object names contains the string 'Bala'
  }
}

// This is a Dart function that tests the CombinedIterableView class, which combines multiple Iterable objects into a single iterable.
void testCombinedIterableView() {
// Create three Iterable objects of integers.
  final one = [1, 2, 3];
  final two = [10, 20, 30];
  final three = [40, 50, 60];

// Create a CombinedIterableView object and pass the three Iterable objects as a list.
  var combined = CombinedIterableView([
    one,
    two,
    three,
  ]);

// Add an integer to the second Iterable object, "two".
  two.add(40);

// Print the CombinedIterableView object and some of its properties.
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
  print(combined.contains(5));
  print(combined.contains(10));
}
// Note: This code assumes that the CombinedIterableView class has been defined elsewhere in the program.

void testCanonicalizedMap() {
  // create a map with some key-value pairs
  final info = {
    'name': 'Bilal',
    'age': 23,
    'netWorthInB': 23,
    'poB': 'Kano',
    'sex': 'male',
    'address': 'Kano',
  };

  // create a new CanonicalizedMap from the original map, where the keys are transformed
  // by applying the provided function to their length
  final canonMap = CanonicalizedMap.from(info, (key) => key.length);

  // print the resulting CanonicalizedMap
  print(canonMap);
}

// Defines a function called `testBoolList()`.
void testBoolList() {
  // Creates an instance of the `BoolList` class with an initial length of 10 and the ability to grow dynamically.
  final boolList = BoolList(
    10,
    growable: true,
  );
  // Prints the contents of the list to the console.
  print(boolList);
  // Sets the value at index 3 of the list to `true`.
  boolList[3] = true;
  // Checks if the value at index 3 is `true` and prints a message to the console.
  if (boolList[3]) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }
  // Prints the updated contents of the list to the console.
  print(boolList);
  // Doubles the length of the list.
  boolList.length *= 2;
  // Prints the updated contents of the list to the console.
  print(boolList);
}
