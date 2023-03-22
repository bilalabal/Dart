void main(List<String> args) {
  final foo = doSomething(10, 30);
  print(foo());
}

// Define a function named `doSomething`
// that takes two integer parameters, `lhs` and `rhs`,
// and returns an integer function
int Function() doSomething(
  int lhs,
  int rhs,
) =>
    // Return an anonymous function that adds the `lhs` and `rhs` parameters and returns the result as an integer
    () => lhs + rhs;
