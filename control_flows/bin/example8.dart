import 'dart:io';

void main(List<String> args) {
  // Keep looping until user types "exit"
  do {
    // Ask for user's name or to type "exit"
    stdout.write('Enter your name or type "exit": ');
    // Read user's input
    final input = stdin.readLineSync();

    // If user types "exit", break out of loop
    if (input == 'exit') {
      break;
    }
    // If user input is empty or null, ask for input again
    else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln('Invalid name. Try again!');
      // Continue with the next iteration of the loop
      continue;
    }

    // Switch statement to greet user differently based on their name
    switch (input.toLowerCase()) {
      // If user's name is Fatima or Bilal, greet them with a compliment
      case 'fatima':
      case 'bilal':
        stdout.writeln('Hello $input. You have a great name!');
        break;
      // For all other names, greet them normally
      default:
        stdout.writeln('Hello $input');
        break;
    }
  } while (
      true); // Keep looping until user types "exit" and breaks out of loop.
}
