// // OOP
//     // Capsulation
//     // EnCapsulation
//     // Constructor & Named COnstructor
//     // Class Methods
//     // Access Modifier
//     // Inheritence & Multiple Inhertince


// // Constructor => Function
//   // Not Body  || Body
//   // return    || return
//   // excecution|| excecution
//   // this      || !This
  
//   // header    || header
//   // body      || body
//   // arg       || arg
//   // class name|| unique name

// import 'test2.dart';

// class Human{

//   String? name;
//   int? age;
//   String? email;

//   Human(this.name, this.age, this.email); // Default Constructor

//   factory Human.fromMap(Map<String, dynamic> i) {
//     return Human(
//       i['name'],
//       i['age'] - 10,
//       i['email']
//     );
//   } // Named Constructor 

//   String humanData() {
//     return '$name, $age, $email';
//   }

//   humanEat() {}

//   humanSleep() {}

//   humanWork() {}

//   humanPlay() {}
// }


// main() {

//   std.forEach((key, value) {
//     // Human newHuman = Human(
//     //   value['name'],
//     //   value['age'],
//     //   value['email']
//     // );
//     Human newHuman = Human.fromMap(value);
//     print(newHuman.humanData());
//   });
// }


// // class for player //
// // loop on players variable 
// // create new object for each player
// // method return all player data //
// // sum for all players scores


import 'test2.dart';

class Player{

  final String playerName;
  int playerScores;
  final String playerPosition;
  String playerClub;
  static int _counter = 0; // Local and Public

  Player(this.playerName, this.playerScores, this.playerPosition, this.playerClub) {
    _counter++;
  }

  factory Player.fromMap(Map<String, dynamic> i) {
    return Player(
      i['playerName'],
      i['playerScores'],
      i['playerPosition'],
      i['playerClub']
    );
  }

  int getCounter() {
    return _counter;
  } // Getter

  void setCounter(int newValue) {
    _counter = newValue;
  } // Setter

  int get counterValue => _counter; // Getter

  String playerData() {
    return '$playerName, $playerScores, $playerPosition, $playerClub';
  }
}


main() {

  List<Player> allPlayers = [];

  num sum = 0;

  players.forEach((key, value) {
    sum += value['playerScores'];
    Player newPlayer = Player.fromMap(value);
    newPlayer.setCounter(10);
    print(newPlayer.counterValue);
    allPlayers.add(newPlayer);
  });

  // print(sum);
  // print(allPlayers);

}

// Access Modifier
  // Global => any variable or method defined out of any scopes and can be modified or readed 
  //, Local => any variable or method defined inside a body ( scope ) 
      // Public => can be accessed or modified 
      // Private => canot be access of modified
          // Getter => variable or method return the private variable value ( read only )
          // Setter => variable or method set new value for the private variable value ( write only )