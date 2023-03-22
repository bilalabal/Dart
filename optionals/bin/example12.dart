void main(List<String> args) {
  // Declaring two nullable strings, `firstName` and `lastName`, and assigning them initial values.
  String? firstName = 'Bilal';
  String? lastName = 'Abdullahi';

  // Using the `flatMap` extension method on `firstName`, passing a callback function that
  // takes `firstName` and the `lastName` as arguments, then returns a string containing both values.
  // If `firstName` or `lastName` is `null`, the `flatMap` method will return `null`.
  // If both values are non-null, the `flatMap` method will return the string containing both values.
  final fullName = firstName.flatMap(
        (f) => lastName.flatMap(
          (l) => '$f $l',
        ),
      ) ??
      // If the result of `flatMap` is `null`, then at least one of the values was `null`,
      // so we print a message indicating that one or both values were `null`.
      'Either first or last name or both are null';
  print(fullName);
}

// Defining an extension method called `flatMap` that can be called on any nullable type `T`.
extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    // Creating a local variable called `shadow` that points to the nullable object this method is called on.
    final shadow = this;
    if (shadow == null) {
      // If `shadow` is `null`, the method returns `null`.
      return null;
    } else {
      // If `shadow` is non-null, the method calls the provided `callback` function, passing in `shadow`
      // as an argument. The result of the callback is returned.
      return callback(shadow);
    }
  }
}
