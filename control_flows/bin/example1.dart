void main(List<String> args) {
  const yourName = 'Foo';
  const myName = 'Bar';

  if (yourName == myName) {
    print('We have same name!');
  } else if (yourName == 'Foo') {
    print('Hello, Foo!');
  } else if (yourName == 'Foo' && myName == 'Bar') {
    print('I am foo and you are bar');
  } else {
    print('Something else');
  }
}
