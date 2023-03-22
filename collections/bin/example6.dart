void main(List<String> args) {
  const names = ['John', 'Jane', 'Jack', 'Jill'];
  final upperCaseNames = names.map((name) {
    print('Map got called');
    return name.toUpperCase();
  });
  for (final name in upperCaseNames.take(3)) {
    print(name);
  }
  void main(List<String> args) {
    // Declare a list of strings containing some names
    const names = ['John', 'Jane', 'Jack', 'Jill'];

    // Use the `map` method to transform each name to uppercase
    // and print a message indicating that the `map` method got called.
    final upperCaseNames = names.map((name) {
      print('Map got called');
      return name.toUpperCase();
    });

    // Use the `take` method to get the first three names in the transformed list,
    // and loop over them using a `for` loop. Print each name.
    for (final name in upperCaseNames.take(3)) {
      print(name);
    }
  }
}
