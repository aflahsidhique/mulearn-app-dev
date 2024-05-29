import 'dart:io';

void main() {
  // Function to prompt and read user input
  String prompt(String message) {
    stdout.write(message);
    return stdin.readLineSync()!;
  }

  // Collecting user information
  String name = prompt('Enter your name: ');
  String phoneNumber = prompt('Enter your phone number: ');
  String age = prompt('Enter your age: ');
  String height = prompt('Enter your height (e.g., 5\'9"): ');
  String weight = prompt('Enter your weight (e.g., 70 kg): ');
  String address = prompt('Enter your address: ');
  
  // Collecting hobbies
  List<String> hobbies = [];
  String hobby;
  do {
    hobby = prompt('Enter a hobby (or press Enter to finish): ');
    if (hobby.isNotEmpty) {
      hobbies.add(hobby);
    }
  } while (hobby.isNotEmpty);

  // Formatting and displaying the biodata
  print('\n==================== BIODATA ====================');
  print('Name: $name');
  print('Phone Number: $phoneNumber');
  print('Age: $age');
  print('Height: $height');
  print('Weight: $weight');
  print('Address: $address');
  print('Hobbies:');
  for (var i = 0; i < hobbies.length; i++) {
    print('  ${i + 1}. ${hobbies[i]}');
  }
  print('=================================================');
}
