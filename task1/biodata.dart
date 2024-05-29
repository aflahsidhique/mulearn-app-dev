import 'dart:io';

void main() {
  String prompt(String message) {
    stdout.write(message);
    return stdin.readLineSync()!;
  }

  String name = prompt('Enter your name: ');
  String phoneNumber = prompt('Enter your phone number: ');
  String age = prompt('Enter your age: ');
  String height = prompt('Enter your height ');
  String weight = prompt('Enter your weight ');
  String address = prompt('Enter your address: ');
  
  List<String> hobbies = [];
  String hobby;
  do {
    hobby = prompt('Enter a hobby (or press Enter to finish): ');
    if (hobby.isNotEmpty) {
      hobbies.add(hobby);
    }
  } while (hobby.isNotEmpty);

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
