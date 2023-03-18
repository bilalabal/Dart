void main(List<String> args) {
  greet();

  // you would never invoke a function and assign the result to a variable
  // like this:
  // final void result = greet();
}

void greet() {
  print('Greetings, Earthling!');
}
