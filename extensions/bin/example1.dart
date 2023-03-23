void main(List<String> args) {
  print('Hello, World!'.reversed); // prints '!dlroW ,olleH'
}

extension on String {
  String get reversed => split('').reversed.join();
}
