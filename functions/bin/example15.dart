// Define the main function that takes a list of strings as an argument
void main(List<String> args) {
  // Call the minus function with no arguments and print the result
  print(minus());

  // Call the minus function with 30 as the first argument and 20 as the second argument and print the result
  print(minus(30, 20));

  // Call the minus function with 20 as the first argument and 30 as the second argument and print the result
  print(minus(20, 30));

  // Call the performOperation function with 20, 3, and the add function as arguments and print the result
  print(
    performOperation(
      20,
      3,
      add,
    ),
  );

  // Call the performOperation function with 34, 21, and the minus function as arguments and print the result
  print(
    performOperation(
      34,
      21,
      minus,
    ),
  );
}

// Define the performOperation function that takes two integers and a function that operates on two integers and returns an integer
int performOperation(int a, int b, int Function(int, int) operation) =>
    operation(a, b);

// Define the minus function that subtracts the rhs from the lhs and returns the result
int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;

// Define the add function that adds the lhs and rhs and returns the result
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;
