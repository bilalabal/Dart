void main(List<String> args) {
  print(add());
  print(add(7, 4));
  print(add(5));
}

add([int a = 1, int b = 2]) {
  return a + b;
}
