import 'dart:io';

void main() {
  
  int seatsPerBus = 12;
  int seatsRemaining = seatsPerBus;
  int busCount = 1;
  
  print("Welcome to Bus Station!");
  while (true) {
    
    print('Enter group size or 0 to exit: ');
    int groupSize = int.parse(stdin.readLineSync()!);

    
    if (groupSize == 0) {
      print('All buses are handled.');
      break;
    }

    else if (groupSize <= seatsRemaining) {
      seatsRemaining -= groupSize;
      print("You booked $groupSize seats successfully!");
      print('Seats remaining: $seatsRemaining');
    } else {
      
      print("Sorry, There are no enough seats. You can move to the next bus");
      busCount++;
      seatsRemaining = seatsPerBus - groupSize;
      print('New Bus Started');
      print('Seats remaining: $seatsRemaining');
    }
  }
}