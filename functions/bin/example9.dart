void main(List<String> args) {
  doSomethingWithAge(age: 23);
  doSomethingWithAge(age: null);
}

void doSomethingWithAge({required int? age}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 yrs, you will be $in2Years yrs old.');
  } else {
    print('You did not tell me your age');
  }
}
