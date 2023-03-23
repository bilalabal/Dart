import 'dart:collection'; // Importing the dart:collection library

void main(List<String> args) {
  const notFound = 'NOT_FOUND'; // Defining a constant variable notFound
  const defaultString =
      'DEFAULT_VALUE'; // Defining a constant variable defaultString

  final myList = SafeList(
    // Creating an instance of the SafeList class
    defaultValue: defaultString, // Setting the defaultValue property
    absentValue: notFound, // Setting the absentValue property
    values: ['Bar', 'Baz'], // Setting the initial values of the list
  );
  print(myList[0]); // Accessing the first element of the list
  print(myList[23]); // Accessing an element outside the bounds of the list
  print(myList[1]); // Accessing the second element of the list

  myList.length = 4; // Setting the length of the list to 4
  print(myList[3]); // Accessing the fourth element of the list

  print(myList); // Printing the contents of the list

  print('------------------');
  myList.length = 0; // Setting the length of the list to 0
  print(myList.first); // Accessing the first element of the empty list
}

class SafeList<T> extends ListBase<T> {
  // Defining a custom class SafeList that extends ListBase
  final List<T> _list; // Defining a private List property
  final T
      absentValue; // Defining a property for the value to return when accessing an out of bounds index
  final T
      defaultValue; // Defining a property for the default value to fill new elements with

  SafeList({
    required this.defaultValue, // Requiring a defaultValue to be passed to the constructor
    required this.absentValue, // Requiring an absentValue to be passed to the constructor
    List<T>?
        values, // Allowing an optional list of initial values to be passed to the constructor
  }) : _list = values ??
            []; // Initializing the _list property with the values list if it's not null, otherwise with an empty list

  @override
  T operator [](int index) => index < _list.length
      ? _list[index]
      : absentValue; // Overriding the [] operator to return the corresponding element or the absentValue if the index is out of bounds

  @override
  void operator []=(int index, T value) => _list[index] =
      value; // Overriding the []= operator to set the value of the corresponding element in the _list

  @override
  int get length => _list
      .length; // Overriding the length getter to return the length of the _list

  @override
  set length(int newLength) {
    // Overriding the length setter
    if (newLength <= _list.length) {
      // If the new length is less than or equal to the current length
      _list.length = newLength; // Truncate the _list to the new length
    } else {
      // If the new length is greater than the current length
      _list.addAll(
        // Add new elements to the _list to reach the new length
        List.filled(
          newLength,
          defaultValue,
        ),
      );
    }
  }

  @override
  T get first => _list.isNotEmpty
      ? _list.first
      : absentValue; // Overriding the first getter to return the first element of the _list or the absentValue if the _list is empty

  @override
  T get last => _list.isNotEmpty
      ? _list.last
      : absentValue; // Overriding the last getter to return the last element of the _list or the absentValue if the _list is empty
}
