import 'example7.dart';

void main(List<String> args) {
  final foo = doSomething(10, 30);
  print(foo());
}

int Function() doSomething(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs;
