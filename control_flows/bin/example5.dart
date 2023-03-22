void main(List<String> args) {
  describe(1);
  describe(1.1);
  describe('Hello');
  describe(true);
  describe({'key': 'value'});
  describe("Hello");
}

/// This function takes a value of any type and
/// prints out a description of its data type.
void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an interger');
      break;
    case double:
      print('This is a double');
      break;
    case String:
      print('This is a string');
      break;
    case bool:
      print('This a boolean');
      break;
    case Map<String, String>:
      print('This is a map');
      break;
    default:
      print('This is something else');
      break;
  }
}
