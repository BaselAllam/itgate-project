// OOP
    // Capsulation
    // EnCapsulation
    // Constructor & Named COnstructor
    // Class Methods
    // Access Modifier
    // Inheritence & Multiple Inhertince


// Constructor => Function
  // Not Body  || Body
  // return    || return
  // excecution|| excecution
  // this      || !This
  
  // header    || header
  // body      || body
  // arg       || arg
  // class name|| unique name

import 'test2.dart';

class Human{

  String? name;
  int? age;
  String? email;

  Human(this.name, this.age, this.email); // Default Constructor

  factory Human.fromMap(Map<String, dynamic> i) {
    return Human(
      i['name'],
      i['age'] - 10,
      i['email']
    );
  } // Named Constructor 

  String humanData() {
    return '$name, $age, $email';
  }

  humanEat() {}

  humanSleep() {}

  humanWork() {}

  humanPlay() {}
}


main() {

  std.forEach((key, value) {
    // Human newHuman = Human(
    //   value['name'],
    //   value['age'],
    //   value['email']
    // );
    Human newHuman = Human.fromMap(value);
    print(newHuman.humanData());
  });
}


// class for player 
// loop on players variable 
// create new object for each player
// method return all player data
// sum for all players scores