void main(List<String> args) {
  // This line is calling the `getFullName` function and passing in two arguments:
  // 'Bilal' as the `firstName` argument, and 'Abdullahi' as the `lastName` argument.
  print(getFullName('Bilal', 'Abdullahi'));
}

String getFullName(
  String? firstName,
  String? lastName,
) =>
    // This line is calling the `withAll` function and passing in two arguments:
    // An array of `firstName` and `lastName` as the `optionals` argument,
    // and a callback function that takes an array of strings and returns a string
    // containing those strings joined by a space character.
    // The `withAll` function returns the result of this callback function, or `null`
    // if any of the elements in the `optionals` array are `null`.
    withAll(
      [firstName, lastName],
      (names) => names.join(' '),
    ) ??
    // If the result of `withAll` is `null`, the `getFullName` function returns the string 'Empty'.
    'Empty';
T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    // This line checks if any of the elements in the `optionals` array are `null`.
    // If so, it returns `null`.
    optionals.any((e) => e == null)
        ? null
        :
        // If all of the elements in the `optionals` array are non-null, this line
        // calls the `callback` function, passing in the `optionals` array cast to a list of non-null `T` objects.
        callback(optionals.cast<T>());
