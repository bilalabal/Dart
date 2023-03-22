void main(List<String> args) {
  // Generate an iterable sequence of 20 elements, where each element is produced
  // by calling the `getName` function with a different integer argument.
  final iterable = Iterable.generate(
    20,
    (i) => getName(i),
  );

  // Iterate over the first two elements of the iterable sequence, and for each
  // element, print it to the console.
  for (final name in iterable.take(2)) {
    print(name);
  }
}

// A function that takes an integer argument and returns a string value that
// includes the integer in its output. Additionally, the function prints a message
// to the console whenever it is called.
String getName(int i) {
  print('Get name got called');
  return 'Bilal #$i ';
}
