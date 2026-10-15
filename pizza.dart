import 'dart:io';

void main() {
  bool keepOrdering = true;

  // Implement a while loop to allow continuous ordering or input validation
  while (keepOrdering) {
    print('\n--- Pizza Menu ---');
    // Display prices: Small=5, Medium=7, Large=10 USD[cite: 1]
    print('Small = \$5 USD');
    print('Medium = \$7 USD');
    print('Large = \$10 USD');

    // Ask the user for pizza size[cite: 1]
    print('\nEnter pizza size (S for Small, M for Medium, L for Large):');
    String? size = stdin.readLineSync()?.toUpperCase();

    int price = 0;
    bool validSize = true;

    // Use a switch statement to calculate and print the total payment[cite: 1]
    switch (size) {
      case 'S':
        price = 5;
        break;
      case 'M':
        price = 7;
        break;
      case 'L':
        price = 10;
        break;
      default:
        print('Invalid size. Please try again.');
        validSize = false;
        break;
    }

    if (!validSize) continue;

    // Ask the user for pizza quantity[cite: 1]
    print('Enter quantity:');
    String? qtyInput = stdin.readLineSync();
    int quantity = int.tryParse(qtyInput ?? '0') ?? 0;

    if (quantity > 0) {
      int total = price * quantity;
      print('Total payment: \$${total} USD');
    } else {
      print('Invalid quantity. Please enter a valid number.');
      continue;
    }

    print('\nWould you like to place another order? (yes/no):');
    String? more = stdin.readLineSync()?.toLowerCase();
    if (more != 'yes' && more != 'y') {
      keepOrdering = false;
    }
  }
  
  print('Thank you for your order!');
}