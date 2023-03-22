// The main function takes a list of strings as input.
void main(List<String> args) {
  // A final variable that will store a boolean value indicating whether
  // the age represents a teenager or not.
  late final bool isTeenager;

  // A constant variable that stores the age being checked.
  const age = 12;

  // Check if the age falls within the range of 13 to 19.
  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } else if (age < 13) {
    // If the age is less than 13, the person is not a teenager.
    isTeenager = false;
  }

  // The following block of code tries to reassign the value of isTeenager,
  // which should not be possible because isTeenager is marked as 'final'.
  try {
    isTeenager = false;
    // The following line should print out the value of isTeenager,
    // which is 'false' at this point.
    print('isTeenager = $isTeenager');
  } catch (e) {
    // If an error occurs when trying to reassign isTeenager,
    // print out the error message instead.
    print(e);
  }
}
