void main(List<String> args) {
  try {
    final String? firstName =
        null; // Declare a nullable string called 'firstName' and initialize it to null
    print(
        firstName!); // Try to force unwrap 'firstName', which will throw a 'NoSuchMethodError' because it is null
  } catch (error) {
    print(error); // Catch the error thrown by the force unwrap and print it
  }
}
